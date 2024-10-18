SELECT COUNT(CASE
             WHEN GENDER = "M" THEN 1
             END),
       COUNT(CASE
             WHEN GENDER = "F" THEN 1
             END)
FROM PATIENTS
