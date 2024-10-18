SELECT CITY,
       COUNT(PATIENT_ID) AS NUM_PATIENTS
FROM PATIENTS
GROUP BY CITY
ORDER BY NUM_PATIENTS DESC,
         CITY ASC
