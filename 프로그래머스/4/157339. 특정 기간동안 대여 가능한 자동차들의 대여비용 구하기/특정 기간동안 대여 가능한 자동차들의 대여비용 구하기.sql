select
    *,
#    c.car_id,
#    c.car_type,
    round(c.daily_fee * 30 * p.discount_rate) as fee    
from
    CAR_RENTAL_COMPANY_CAR c
join
    CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.car_id = h.car_id
join
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN p on p.car_type = c.car_type
where
    c.car_type in ('세단', 'SUV')
    and p.duration_type = '30일 이상'
#group by
 #   c.car_id
#having 
#    sum(h.end_date >= '2022-11-01') = 0
#    and fee >= 500000 and fee < 2000000
order by
    c.car_id, h.start_date