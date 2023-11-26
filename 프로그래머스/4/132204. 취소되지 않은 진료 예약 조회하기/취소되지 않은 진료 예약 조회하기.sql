-- 코드를 입력하세요
SELECT
    *
from 
    appointment a
inner join    patient p on    a.pt_no = p.pt_no
inner join    doctor d on   a.mcdp_cd = d.mcdp_cd
