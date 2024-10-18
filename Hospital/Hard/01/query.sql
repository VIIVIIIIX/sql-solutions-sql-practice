SELECT COUNT(*) AS NUM_PATIENTS,
(WEIGHT - (WEIGHT % 10)) AS WEIGHT_GROUP
FROM PATIENTS
GROUP BY WEIGHT_GROUP
ORDER BY WEIGHT_GROUP DESC
