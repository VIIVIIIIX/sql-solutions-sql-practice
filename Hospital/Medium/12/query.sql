SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE
FROM PATIENTS
WHERE YEAR(BIRTH_DATE) IN (1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979)
ORDER BY YEAR(BIRTH_DATE), MONTH(BIRTH_DATE), DAY(BIRTH_DATE)