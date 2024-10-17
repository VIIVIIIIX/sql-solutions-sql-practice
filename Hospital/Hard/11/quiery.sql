SELECT DOCTOR_ID,
	CONCAT(FIRST_NAME, " ", LAST_NAME) AS DOCTOR_NAME,
       SPECIALTY,
       YEAR(ADMISSION_DATE) AS YEAR,
       COUNT(PATIENT_ID) AS NUM_PATIENTS
FROM ADMISSIONS
INNER JOIN DOCTORS
ON DOCTORS.DOCTOR_ID = ADMISSIONS.ATTENDING_DOCTOR_ID
GROUP BY DOCTORS.DOCTOR_ID, YEAR
