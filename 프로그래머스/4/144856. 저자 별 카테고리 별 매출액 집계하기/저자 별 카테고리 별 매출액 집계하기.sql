-- 코드를 입력하세요
select
    t2.author_id,
    t2.author_name,
    t2.category,
    t2.total_sales
from
    (SELECT
         b.author_id,
            a.author_name,
            b.category,
        sum(b.price * s.sales) as total_sales
    from
        book b
    inner join
        author a
    on
        b.author_id = a.author_id
    inner join
        book_sales s
    on
        b.book_id = s.book_id
    where
        s.sales_date between '2022-01-01' and '2022-01-31'
    group by
        b.book_id) t2
order by
    t2.author_id asc,
    t2.category desc