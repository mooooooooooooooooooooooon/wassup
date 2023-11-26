-- 코드를 입력하세요
SELECT
    year(s.sales_date) as year,
    month(s.sales_date) as month,
    i.gender as gender,
    count(distinct s.user_id) as users
from
    online_sale s
inner join
    user_info i
on 
    s.user_id = i.user_id
where
    i.gender is not null
group by
    year(s.sales_date),
    month(s.sales_date),
    gender
order by
    year(s.sales_date) asc,
    month(s.sales_date) asc,
    gender asc