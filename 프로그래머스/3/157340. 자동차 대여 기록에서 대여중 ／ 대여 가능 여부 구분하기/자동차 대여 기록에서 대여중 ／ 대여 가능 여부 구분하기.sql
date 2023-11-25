-- 코드를 입력하세요
select
    t1.car_id,
    case when
        t1.result = 0 then '대여 가능'
        else '대여중'
    end as availability
from

(SELECT
    car_id,
    sum(if(start_date <= '2022-10-16' and end_date >= '2022-10-16', 1, 0)) as result
    #동일한 car_id의 ava 값 중 하나라도 '대여중'이면 대여중, 없으면 대여 가능
from
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by
    car_id) as t1
    
    
order by
    t1.car_id desc