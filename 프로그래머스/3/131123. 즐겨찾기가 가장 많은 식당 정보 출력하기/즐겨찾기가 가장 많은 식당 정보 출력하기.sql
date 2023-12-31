-- 코드를 입력하세요
select
    t1.food_type, t1.rest_id, t1.rest_name, t1.favorites
from
    rest_info as t1,
    (select food_type, max(favorites) as favorites from rest_info group by food_type) as t2
where
    t1.favorites = t2.favorites and
    t1.food_type = t2.food_type
order by
    food_type desc