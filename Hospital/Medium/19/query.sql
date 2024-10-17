SELECT FIRST_NAME, LAST_NAME, COUNT(*)
FROM ADMISSIONS
INNER JOIN DOCTORS
ON DOCTORS.DOCTOR_ID = ADMISSIONS.ATTENDING_DOCTOR_ID
GROUP BY FIRST_NAME, LAST_NAME