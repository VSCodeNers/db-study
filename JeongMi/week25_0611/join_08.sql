-- JOIN: 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기(Lv.4)
SELECT CAR_ID, DISCOUNT.CAR_TYPE as CAR_TYPE,
    ROUND((DAILY_FEE * 30 * (100 - DISCOUNT_RATE) / 100)) as FEE
FROM CAR_RENTAL_COMPANY_CAR as CAR
    RIGHT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN as DISCOUNT
    ON CAR.CAR_TYPE = DISCOUNT.CAR_TYPE
WHERE DURATION_TYPE = '30일 이상'
    AND CAR_ID IN (
        -- 자동차 종류가 세단, SUV인 자동차 ID
        SELECT CAR_ID
        FROM CAR_RENTAL_COMPANY_CAR
        WHERE CAR_TYPE IN ('세단', 'SUV')
            AND CAR_ID NOT IN (
            -- 2022/11/01 ~ 2022/11/30에 대여 불가능한 자동차 ID
            SELECT CAR_ID
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE (START_DATE BETWEEN '2022-11-01' AND '2022-11-30')
                OR (END_DATE BETWEEN '2022-11-01' AND '2022-11-30')
                OR (START_DATE < '2022-11-01' AND END_DATE > '2022-11-30')))
-- 30일간의 대여 금액이 50만원 이상 200만원 미만
HAVING FEE BETWEEN 500000 AND 2000000
ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC;