SELECT CONCAT(UPPER(LAST_NAME), ",", LOWER(FIRST_NAME)) AS FULL_NAME
FROM PATIENTS
ORDER BY FIRST_NAME DESC
