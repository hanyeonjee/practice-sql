-- 임시 테이블 만들어서 모든 시간에 대해 0까지 카운트

WITH RECURSIVE TIMETABLE(HOUR) AS (
    SELECT 0
    UNION
    SELECT TIMETABLE.HOUR + 1 FROM TIMETABLE WHERE TIMETABLE.HOUR < 23
)

SELECT HOUR, COUNT(A.ANIMAL_ID)
FROM TIMETABLE AS T LEFT JOIN ANIMAL_OUTS AS A ON T.HOUR = HOUR(A.DATETIME)
GROUP BY HOUR
ORDER BY HOUR