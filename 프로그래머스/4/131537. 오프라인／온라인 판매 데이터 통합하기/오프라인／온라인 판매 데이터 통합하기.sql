-- 코드를 입력하세요
SELECT
    date_format(sales_date, '%Y-%m-%d') as sales_date,
    product_id,
    user_id,
    sales_amount
from(
SELECT
    sales_date,
    product_id,
    user_id,
    sales_amount
from
    online_sale 
union all
SELECT
     sales_date,
    product_id,
    Null as user_id,
    sales_amount
    from
        offline_sale
    where
        sales_date between '2022-03-01' and '2022-03-31') t1
where
    sales_date between '2022-03-01' and '2022-03-31'
order by
    sales_date asc,
    product_id asc,
    user_id asc