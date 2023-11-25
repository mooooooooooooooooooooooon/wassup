-- 코드를 입력하세요
SELECT
    distinct c.car_id as car_id
from
    car_rental_company_rental_history r
inner join
    car_rental_company_car c
on
    c.car_id = r.car_id
where
    c.car_type = '세단' and
    r.start_date between '2022-10-01' and '2022-10-31'
order by
    c.car_id desc