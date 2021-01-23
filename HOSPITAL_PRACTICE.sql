-- FIND GENERAL MEDICINE DOCTORS NAME
SELECT A.NAME, B.DEPARTMENT,C.NAME 
FROM PHYSICIAN A
JOIN AFFILIATED_WITH B
JOIN DEPARTMENT C
ON C.DEPARTMENTID=B.DEPARTMENT
ON B.PHYSICIAN = A.EMPLOYEEID
WHERE B.DEPARTMENT=2

-- FIND WHICH PTIENT - DOCTOR VISIT
SELECT A.NAME PATIENT_NAME, B.NAME DOCTOR_NAME 
FROM PATIENT A
JOIN PHYSICIAN B
ON A.PCP = B.EMPLOYEEID

-- FIND ROOM DETAILS
SELECT UNAVAILABLE, COUNT(*) FROM ROOM
GROUP BY UNAVAILABLE

-- TOTAL PATIENT COUNT ON BLOCKCODE = 2
SELECT COUNT(*) FROM ROOM
WHERE BLOCKCODE =2

--CHECK PROCEDURE DETAILS
SELECT A.NAME AS DOCTOR_NAME, B.NAME AS NURSE_NAME, C.DATEUNDERGOES AS PROCEDURETIME
FROM PHYSICIAN A
JOIN NURSE B
JOIN UNDERGOES C
ON B.EMPLOYEEID = C.ASSISTINGNURSE
ON A.EMPLOYEEID = C.PHYSICIAN
WHERE C.PHYSICIAN = 3

-- FIND HOSPITAL WORKLOAD SUCH AS PROCEURE TIME AND DOCTORS, NURSE DETAILS
SELECT A.NAME, B.DOSE, C.NAME, C.BRAND 
FROM PATIENT A
JOIN PRESCRIBES B
JOIN MEDICATION C
ON C.CODE = B.MEDICATION
ON A.SSN = B.PATIENT

-- PATIENT MEDICATION AND PRESCRIPTION DETAILS
SELECT TREATMENT, COUNT(*) FROM TRAINED_IN
GROUP BY TREATMENT