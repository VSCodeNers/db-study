/* 12세 이하인 여자 환자 목록 출력하기 */
/* 전화번호가 없다면 NONE 값을 넣으라고 하였으므로 조건문 사용함
   처음에 IF로 했는데 개떡같이 나와서 바꿔봄 / 해당 필드값이 널값이면 지정한 걸로 대체하여 출력 */
SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W' /* 조건1: 12세 이하인 여자환자 */
ORDER BY AGE DESC, PT_NAME ASC    /* 조건2: 나이 내림차순, but 나이 같으면 이름 오름차순 */