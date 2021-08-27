-- count(*)사용!

select ANIMAL_INS.ANIMAL_TYPE, count(*) as count
from ANIMAL_INS
group by ANIMAL_INS.ANIMAL_TYPE
order by ANIMAL_INS.ANIMAL_TYPE asc;
