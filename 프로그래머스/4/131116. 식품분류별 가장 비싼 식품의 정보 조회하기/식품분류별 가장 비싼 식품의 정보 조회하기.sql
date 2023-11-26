-- 코드를 입력하세요
select
    t1.category,
    t2.max_price,
    t1.product_name
from
    food_product t1,
    (SELECT
        category, max(price) as max_price
    from
        food_product
    group by
        category) t2
where
    t1.category = t2.category and
    t1.price = t2.max_price and
    t1.category regexp '과자|국|김치|식용유'
order by
    max_price desc