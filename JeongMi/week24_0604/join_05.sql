-- JOIN: 오랜 기간 보호한 동물(1) (Lv.3)
SELECT ANIMAL_INS.NAME as NAME, ANIMAL_INS.DATETIME as DATETIME
FROM ANIMAL_INS
  LEFT JOIN ANIMAL_OUTS
  ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_OUTS.ANIMAL_ID IS NULL
ORDER BY ANIMAL_INS.DATETIME ASC
LIMIT 3;
