-- 코드를 입력하세요
select
    product_id,
    product_name,
    sum(total_sales) as total_sales
from
    (SELECT
    p.product_id,
    p.product_name,
    (p.price * o.amount) as total_sales
from
    food_product p
inner join
    food_order o
on
    p.product_id = o.product_id
where
    o.produce_date between '2022-05-01' and '2022-05-31') as t1
group by
    product_name
order by
    sum(total_sales) desc,
    product_id asc