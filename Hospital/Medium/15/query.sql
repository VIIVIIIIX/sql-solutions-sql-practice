SELECT MAX(WEIGHT) - MIN(WEIGHT) AS WEIGHT_DIFFERENCE
FROM PATIENTS
WHERE LAST_NAME LIKE "MARONI"
