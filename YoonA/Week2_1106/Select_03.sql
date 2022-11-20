-- 과일로 만든 아이스크림 고르기

SELECT OD.FLAVOR 
FROM FIRST_HALF OD
JOIN ICECREAM_INFO IC
ON OD.FLAVOR  = IC.FLAVOR 
WHERE OD.TOTAL_ORDER > 3000               
AND IC.INGREDIENT_TYPE = 'fruit_based'   
ORDER BY OD.TOTAL_ORDER DESC;