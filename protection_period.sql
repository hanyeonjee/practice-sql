-- 두 날짜의 차를 구하기 위해선 (최근-과거) 순서로 해야함
-- 쿼리 결과 개수를 제한하기 위해선 limit를 사용

select ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
from ANIMAL_INS
left join ANIMAL_OUTS
on ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
order by (ANIMAL_OUTS.DATETIME-ANIMAL_INS.DATETIME) desc
limit 2;
