SELECT CONCAT(
    ROUND(
      (
        SELECT COUNT(*)
        FROM PATIENTS
        WHERE GENDER = 'M'
      ) / CAST(COUNT(*) AS FLOAT),
      4
    ) * 100,
    '%'
  ) AS PERCENT_OF_MALE_PATIENTS
FROM PATIENTS
