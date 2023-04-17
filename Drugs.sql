
INSERT ALL
    INTO DRUG VALUES('Memantine', 'C15H25NO3', 187.99, TO_DATE('02/25', 'MM/YY'), 'Frozen', 0, 1001)
    INTO DRUG VALUES('Liothyrorine', 'C22H23ClN6O', 283.5, TO_DATE('11/25', 'MM/YY'), 'Refrigerated', 0, 1002)
    INTO DRUG VALUES('Doxepin', 'C7H8ClN3O4S2', 197.75, TO_DATE('04/24', 'MM/YY'), 'Frozen', 0, 1002)
    INTO DRUG VALUES('Liraglutide', 'C12H11ClN2O5S', 267.25, TO_DATE('06/25', 'MM/YY'), 'Room Temperature', 1, 1009)
    INTO DRUG VALUES('Digoxin', 'C13H21NO3', 356.5, TO_DATE('08/24', 'MM/YY'), 'Refrigerated', 0, 1006)
    INTO DRUG VALUES('Vasmak', 'C15H11I4NO4', 290.85, TO_DATE('07/25', 'MM/YY'), 'Room Temperature', 0, 1011)
    INTO DRUG VALUES('Aspavor', 'C19H16O4', 147.4, TO_DATE('05/24', 'MM/YY'), 'Frozen', 0, 1016)
    INTO DRUG VALUES('Astor', '(C12H19NO20S3)n', 234.75, TO_DATE('01/27', 'MM/YY'), 'Room Temperature', 0, 1013)
    INTO DRUG VALUES('Atolip', 'C20H22N8O5', 171.2, TO_DATE('12/27', 'MM/YY'), 'Room Temperature', 1, 1003)
    INTO DRUG VALUES('Chlomin', 'C38H72N2O12', 122.99, TO_DATE('09/28', 'MM/YY'), 'Refrigerated', 0, 1007)
    INTO DRUG VALUES('Cobalamin', 'CoCl2•6H2O', 302.27, TO_DATE('03/28', 'MM/YY'), 'Frozen', 0, 1012)
    INTO DRUG VALUES('Doxorubicin', 'Co27H29NO11•HCl', 282.12, TO_DATE('08/28', 'MM/YY'), 'Room Temperature', 1, 1010)
    INTO DRUG VALUES('Carboplatin', 'Co6H12N2O4Pt', 30.98, TO_DATE('07/26', 'MM/YY'), 'Refrigerated', 0, 1008)
    INTO DRUG VALUES('Trizivir', 'C62H90CoN13O15P', 32.53, TO_DATE('02/26', 'MM/YY'), 'Frozen', 0, 1017)
    INTO DRUG VALUES('Triumeq', 'C12H22CoO14', 53.29, TO_DATE('06/24', 'MM/YY'), 'Frozen', 0, 1004)
    INTO DRUG VALUES('Tymlos', 'CoSO4·7H2O', 112.15, TO_DATE('11/27', 'MM/YY'), 'Refrigerated', 0, 1015)
    INTO DRUG VALUES('Xeglyze', 'Co(NO3)2•6H2O', 89.43, TO_DATE('10/26', 'MM/YY'), 'Room Temperature', 0, 1014)
    INTO DRUG VALUES('Acetaminophen', 'C9H8O4', 379.5, TO_DATE('12/26', 'MM/YY'), 'Refrigerated', 0, 1005)
    INTO DRUG VALUES('Albuterol', 'C13H18O2', 144.6, TO_DATE('05/28', 'MM/YY'), 'Room Temperature', 1, 1016)
    INTO DRUG VALUES('Amoxicillin', 'C8H9NO2', 144.6, TO_DATE('07/28', 'MM/YY'), 'Frozen', 0, 1009)
    INTO DRUG VALUES('Aspirin', 'C16H18N2O4S', 318.75, TO_DATE('04/27', 'MM/YY'), 'Room Temperature', 1, 1013)
    INTO DRUG VALUES('Insulin', 'C16H19N3O5S', 84.9, TO_DATE('09/24', 'MM/YY'), 'Refrigerated', 0, 1011)
    INTO DRUG VALUES('Lorazepam', 'C17H18FN3O3', 278.1, TO_DATE('02/24', 'MM/YY'), 'Room Temperature', 1, 1006)
    INTO DRUG VALUES('Metformin', 'C4H11N5', 300.25, TO_DATE('03/24', 'MM/YY'), 'Room Temperature', 1, 1010)
    INTO DRUG VALUES('Omeprazole', 'C254H377N65O75S6', 195, TO_DATE('08/27', 'MM/YY'), 'Frozen', 0, 1015)
    INTO DRUG VALUES('Oxycodone', 'C17H19NO3', 109.99, TO_DATE('06/26', 'MM/YY'), 'Room Temperature', 0, 1007)
    INTO DRUG VALUES('Penicillin', 'C18H21NO3', 386.5, TO_DATE('01/26', 'MM/YY'), 'Frozen', 0, 1003)
    INTO DRUG VALUES('Prednisone', 'C16H13ClN2O', 122.4, TO_DATE('11/24', 'MM/YY'), 'Room Temperature', 0, 1012)
    INTO DRUG VALUES('Warfarin', 'C33H35FN2O5', 222.75, TO_DATE('12/24', 'MM/YY'), 'Frozen', 0, 1014)
    INTO DRUG VALUES('Zolpidem', 'C25H38O5', 371.2, TO_DATE('04/26', 'MM/YY'), 'Refrigerated', 0, 1008)
SELECT 1
FROM DUAL;


INSERT ALL
    INTO HAZARDOUS VALUES('Vasmak', 'Avoid exposure to heat and moisture')
    INTO HAZARDOUS VALUES('Aspavor', 'Store in cool dry place')
    INTO HAZARDOUS VALUES('Astor', 'Store in tightly closed container')
    INTO HAZARDOUS VALUES('Carboplatin', 'Avoid storing with food and drinks')
    INTO HAZARDOUS VALUES('Trizivir', 'Avoid exposure to heat and moisture')
    INTO HAZARDOUS VALUES('Triumeq', 'Store in cool dry place')
    INTO HAZARDOUS VALUES('Tymlos', 'Store in tightly closed container')
    INTO HAZARDOUS VALUES('Xeglyze', 'Avoid exposure to heat and moisture')
    INTO HAZARDOUS VALUES('Penicillin', 'Store in cool dry place')
    INTO HAZARDOUS VALUES('Prednisone', 'Avoid storing with food and drinks')
    INTO HAZARDOUS VALUES('Warfarin', 'Store in tightly closed container')
    INTO HAZARDOUS VALUES('Zolpidem', 'Avoid exposure to heat and moisture')
    INTO HAZARDOUS VALUES('Oxycodone', 'Store in cool dry place')
    INTO HAZARDOUS VALUES('Omeprazole', 'Avoid exposure to heat and moisture')
SELECT 1
FROM DUAL;


INSERT ALL
    INTO NON_HAZARDOUS VALUES('Liraglutide', 'Incineration')
    INTO NON_HAZARDOUS VALUES('Memantine', 'Photodegradation')
    INTO NON_HAZARDOUS VALUES('Liothyrorine', 'Chemical Hydrolysis')
    INTO NON_HAZARDOUS VALUES('Digoxin', 'Oxidation')
    INTO NON_HAZARDOUS VALUES('Doxepin', 'Chemical Hydrolysis')
    INTO NON_HAZARDOUS VALUES('Atolip', 'Chemical Hydrolysis')
    INTO NON_HAZARDOUS VALUES('Chlomin', 'Biodegradation')
    INTO NON_HAZARDOUS VALUES('Cobalamin', 'Incineration')
    INTO NON_HAZARDOUS VALUES('Doxorubicin', 'Chemical Hydrolysis')
    INTO NON_HAZARDOUS VALUES('Acetaminophen', 'Oxidation')
    INTO NON_HAZARDOUS VALUES('Albuterol', 'Incineration')
    INTO NON_HAZARDOUS VALUES('Amoxicillin', 'Biodegradation')
    INTO NON_HAZARDOUS VALUES('Aspirin', 'Incineration')
    INTO NON_HAZARDOUS VALUES('Insulin', 'Photodegradation')
    INTO NON_HAZARDOUS VALUES('Lorazepam', 'Chemical Hydrolysis')
    INTO NON_HAZARDOUS VALUES('Metformin', 'Photodegradation')
SELECT 1
FROM DUAL;
