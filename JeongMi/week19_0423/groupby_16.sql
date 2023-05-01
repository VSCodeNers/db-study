-- GROUP BY: 입양 시각 구하기(2) (Lv.4)
SET @HOUR := -1; -- 변수 선언

SELECT (@HOUR := @HOUR +1) AS HOUR,
    (SELECT COUNT(HOUR(DATETIME)) 
        FROM ANIMAL_OUTS 
        WHERE HOUR(DATETIME)=@HOUR) as COUNT
FROM ANIMAL_OUTS
WHERE @HOUR < 23;

-- 0시부터 23시까지 다 나와야 함.
-- GROUP BY 문제인데 GROUP BY를 사용할 방법이 생각이 안 남...