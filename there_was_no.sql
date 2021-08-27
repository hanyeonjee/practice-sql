select ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
from ANIMAL_OUTS
left join ANIMAL_INS
on ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
where ANIMAL_INS.DATETIME > ANIMAL_OUTS.DATETIME
order by ANIMAL_INS.DATETIME;
