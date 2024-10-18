SELECT PATIENT_ID,
       WEIGHT,
       HEIGHT,
       CASE
       WHEN WEIGHT/(HEIGHT*HEIGHT*0.0001) >= 30 THEN 1
       ELSE 0
       END AS IS_OBESE
FROM PATIENTS
