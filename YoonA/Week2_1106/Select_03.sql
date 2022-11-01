/* 과일로 만든 아이스크림 고르기 */

/* 두 테이블(FIRST어쩌구, ICE어쩌구)을 FLAVOR을 통해 하나로 합침 */
SELECT OD.FLAVOR 
FROM FIRST_HALF OD
JOIN ICECREAM_INFO IC
ON OD.FLAVOR  = IC.FLAVOR 
WHERE OD.TOTAL_ORDER > 3000                 /* 총주문량이 3000보다 높아야하므로 */
AND IC.INGREDIENT_TYPE = 'fruit_based'      /* 조건이 과일인 아이스크림이므로 */
ORDER BY OD.TOTAL_ORDER DESC;