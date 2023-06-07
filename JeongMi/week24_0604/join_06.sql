-- JOIN: 그룹별 조건에 맞는 식당 목록 출력하기(Lv.4)
SELECT MEMBER_NAME, REVIEW_TEXT, DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM REST_REVIEW
    LEFT JOIN MEMBER_PROFILE
    ON REST_REVIEW.MEMBER_ID = MEMBER_PROFILE.MEMBER_ID
WHERE REST_REVIEW.MEMBER_ID
    LIKE (SELECT MEMBER_ID
        FROM REST_REVIEW
        GROUP BY MEMBER_ID
        ORDER BY COUNT(*) DESC
        LIMIT 1)
ORDER BY REVIEW_DATE, REVIEW_TEXT;

/*
리뷰 수가 가장 많은 사용자 ID
SELECT MEMBER_ID
FROM REST_REVIEW
GROUP BY MEMBER_ID
ORDER BY COUNT(*) DESC
LIMIT 1
*/