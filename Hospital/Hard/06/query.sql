WITH A AS
(
SELECT COUNT(GENDER) AS MALE_COUNT,
       PROVINCE_NAME
FROM PATIENTS
INNER JOIN PROVINCE_NAMES
ON PROVINCE_NAMES.PROVINCE_ID = PATIENTS.PROVINCE_ID
WHERE GENDER LIKE "M"
GROUP BY PROVINCE_NAME
),

B AS
(
SELECT COUNT(GENDER) AS FEMALE_COUNT,
       PROVINCE_NAME
FROM PATIENTS
INNER JOIN PROVINCE_NAMES
ON PROVINCE_NAMES.PROVINCE_ID = PATIENTS.PROVINCE_ID
WHERE GENDER LIKE "F"
GROUP BY PROVINCE_NAME
)

SELECT A.PROVINCE_NAME
FROM A
LEFT JOIN B
ON A.PROVINCE_NAME = B.PROVINCE_NAME
WHERE MALE_COUNT > FEMALE_COUNT
