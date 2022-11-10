-- 흉부외과 또는 일반외과 의사 목록 출력하기(Lv.1)
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') as HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD LIKE 'CS'
    OR MCDP_CD LIKE 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;