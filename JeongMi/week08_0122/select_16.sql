-- 오프라인/온라인 판매 데이터 통합하기(Lv.4)
SELECT *
FROM (SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') as SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
    FROM ONLINE_SALE
    WHERE SALES_DATE >= '2022-03-01'
        AND SALES_DATE <= '2022-03-31'
    UNION ALL
    SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d'), PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT
    FROM OFFLINE_SALE
    WHERE SALES_DATE >= '2022-03-01'
        AND SALES_DATE <= '2022-03-31') SALE
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;