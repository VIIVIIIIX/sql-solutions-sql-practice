SELECT PATIENTS.PATIENT_ID,
       FIRST_NAME,
       LAST_NAME
FROM PATIENTS
WHERE PATIENTS.PATIENT_ID 
NOT IN (SELECT PATIENT_ID FROM ADMISSIONS)
