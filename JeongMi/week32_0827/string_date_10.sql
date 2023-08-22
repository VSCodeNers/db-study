-- String, Date: 조건별로 분류하여 주문상태 출력하기(Lv.3)
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') as OUT_DATE,
    CASE WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
    WHEN OUT_DATE IS NULL THEN '출고미정'
    ELSE '출고대기'
    END as 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID;