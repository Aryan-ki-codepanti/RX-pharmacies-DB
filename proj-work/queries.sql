-- A1 Retrieve the contractor ssn,names , pharmacy names and company names which have their contracts due before next 6 months (from today).

SELECT S.SSN, S.FNAME, S.LNAME, P.PNAME, PC.COMPANY_NAME, C.END_DATE
FROM SUPERVISOR S, PHARMACY P, PHARMACEUTICAL_COMPANY PC, CONTRACTS C
WHERE C.COMPANY_ID = PC.COMPANY_ID
    AND C.PHARMACY_LOCATION = P.BRANCH_LOCATION
    AND C.SUPER_SSN = S.SSN
    AND C.END_DATE < CURRENT_DATE + INTERVAL '6' MONTH;

-- A2 List the name of all doctors who have either prescribed a frozen hazardous drug once or are family doctor to some patient with surname 'Oberoi'

SELECT D.FNAME, D.LNAME
FROM DOCTOR D
WHERE D.SSN IN (
        SELECT P.DOC_SSN
        FROM PATIENT P
        WHERE P.LNAME = 'Oberoi'
    )
    OR D.SSN IN (
        SELECT R.SSN
        FROM (PRESCRIBES P JOIN (DRUG S NATURAL JOIN HAZARDOUS H) ON P.DRUG_NAME = TRADE_NAME)
            JOIN DOCTOR R
            ON R.SSN = P.DOC_SSN
        WHERE S.STORAGE_TEMPERATURE_TYPE = 'Frozen'
    );

-- A3 List the prescription details of Patient 'Ramesh S. Narayan' from doctor 'Dr. Gagan Gautam' prescribed after 20 February 2021
SELECT P.DRUG_NAME, QUANTITY, PDATE
FROM DOCTOR DR, PATIENT PT, PRESCRIBES P
WHERE DR.SSN = P.DOC_SSN
    AND PT.SSN = P.PATIENT_SSN
    AND PT.FNAME = 'Ramesh'
    AND PT.MINIT = 'S'
    AND PT.LNAME = 'Narayan'
    AND DR.FNAME = 'Gagan'
    AND DR.LNAME = 'Gautam'
    AND P.PDATE > TO_DATE('2021-02-20', 'YYYY-MM-DD');

UPDATE PRESCRIBES
SET
    PDATE = PDATE - INTERVAL '1' MONTH
WHERE
    DRUG_NAME = 'Astor'
    AND QUANTITY = 3;

-- A4 Display the details of drugs that can neither be disposed nor recycled containing Cobalt in its manufacturing.

SELECT *
FROM DRUG D
WHERE FORMULA LIKE '%Co%'
    AND TRADE_NAME NOT IN (
        SELECT TRADE_NAME
        FROM DISPOSED_BY 

        UNION
        
        SELECT TRADE_NAME
        FROM RECYCLED_BY
    );


-- A5) Retrieve the location, names, selling prices for drug of the pharmacies that sell all the drugs manufactured by 'Cipla' or 'Health mart'. Order results by Location, pharmacy names

SELECT O.BRANCH_LOCATION, O.PNAME, D.TRADE_NAME, (1 - S.DISCOUNT) * D.MRP AS SELLING_PRICE
FROM PHARMACY O
    JOIN (DRUG D JOIN SELLS S ON TRADE_NAME = DRUG_NAME)
    ON BRANCH_LOCATION = PHARMACY_LOCATION
WHERE NOT EXISTS (
        SELECT TRADE_NAME
        FROM PHARMACEUTICAL_COMPANY
            JOIN DRUG
            ON COMPANY_ID = MANUFACTURER_ID
        WHERE COMPANY_NAME IN ('Cipla', 'Health mart') 
        
        EXCEPT

        SELECT DRUG_NAME
        FROM SELLS
        WHERE PHARMACY_LOCATION = O.BRANCH_LOCATION
    )
ORDER BY BRANCH_LOCATION, PNAME;

-- M1. Select the name of the doctors and for each doctor count the number of patients who are between the age group of 10-15 and are prescribed the medicine 'ibuprofen'.

SELECT D.SSN, D.FNAME, D.LNAME, COUNT(P.SSN)
FROM DOCTOR D, PATIENT P, PRESCRIBES R
WHERE R.PATIENT_SSN = P.SSN
    AND R.DOC_SSN = D.SSN
    AND (MONTHS_BETWEEN(CURRENT_DATE, P.BDATE) / 12 BETWEEN 10 AND 15)
    AND R.DRUG_NAME = 'Ibuprofen'
GROUP BY D.SSN, D.FNAME, D.LNAME;


-- M2. Select non-hazardous drug names sold by a pharmacy having at least one long term contract of more than 2 years and the drug is prescribed to less than 20 patients. 

SELECT TRADE_NAME
FROM NON_HAZARDOUS N, SELLS S, CONTRACTS C
WHERE N.TRADE_NAME = S.DRUG_NAME
    AND S.PHARMACY_LOCATION = C.PHARMACY_LOCATION
    AND (MONTHS_BETWEEN(C.END_DATE, C.START_DATE ) / 12) >= 2

INTERSECT

SELECT TRADE_NAME
FROM NON_HAZARDOUS N, PRESCRIBES R
WHERE N.TRADE_NAME = R.DRUG_NAME
GROUP BY TRADE_NAME
HAVING COUNT(TRADE_NAME) < 20;

-- M3. Retrieve all the treatment plants that dispose those hazardous drugs having expiry after 19th March 2022 that were prescribed by a non family doctor having more than 3 yrs experience.

SELECT T.Plant_id , T.Owner_info, T.Location
FROM TREATMENT_PLANT T, 
    DISPOSED_BY DB, 
    HAZARDOUS H , 
    DRUG  D, 
    PRESCRIBES P, 
    DOCTOR DR
WHERE 
	DB.Plant_id = T.Plant_id
    AND P.Doc_SSN = DR.SSN 
    AND H.Trade_Name = D.Trade_Name
    AND H.Trade_Name = DB.Trade_Name
    AND H.Trade_Name = P.Drug_Name  

    AND D.Expiration_Date > TO_DATE('19-03-2024','DD-MM-YYYY') 
    AND DR.Doctor_type = 'Non Family' 
    AND DR.Years_of_experience > 3;  

