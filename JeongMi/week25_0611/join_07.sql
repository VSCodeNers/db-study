-- JOIN: 주문량이 많은 아이스크림들 조회하기(Lv.4)
SELECT FIRST_HALF.FLAVOR as FLAVOR
FROM (SELECT FLAVOR, SUM(TOTAL_ORDER) as TOTAL
      FROM FIRST_HALF
      GROUP BY FLAVOR) as FIRST_HALF
    LEFT JOIN (SELECT FLAVOR, SUM(TOTAL_ORDER) as TOTAL
      FROM JULY
      GROUP BY FLAVOR) as JULY
    ON FIRST_HALF.FLAVOR = JULY.FLAVOR
GROUP BY FIRST_HALF.FLAVOR
ORDER BY SUM(FIRST_HALF.TOTAL) + SUM(JULY.TOTAL) DESC
LIMIT 3;