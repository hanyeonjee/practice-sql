-- 입양 시각 구하기
-- hour() 함수 사용

select hour(ANIMAL_OUTS.DATETIME) as HOUR, count(*) as COUNT
from ANIMAL_OUTS
group by hour(ANIMAL_OUTS.DATETIME)
having hour between 9 and 19
order by hour(ANIMAL_OUTS.DATETIME) asc;
