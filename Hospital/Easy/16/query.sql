SELECT FIRST_NAME,
       LAST_NAME,
       ALLERGIES
FROM PATIENTS
WHERE ALLERGIES IS NOT NULL
AND CITY LIKE "HAMILTON"