-- String, Date: 특정 옵션이 포함된 자동차 리스트 구하기(Lv.1)
SELECT *
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC;