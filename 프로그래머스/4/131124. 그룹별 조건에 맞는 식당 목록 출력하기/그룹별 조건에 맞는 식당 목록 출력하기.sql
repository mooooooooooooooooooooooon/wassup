-- 코드를 입력하세요
select
    t1.member_name,
    t1.review_text,
    date_format(t1.review_date, '%Y-%m-%d') as review_date
    
from
    (select
        p1.member_id,
        r1.review_text,
        r1.review_date,
        p1.member_name
    from 
     member_profile p1
    inner join 
        rest_review r1   on p1.member_id = r1.member_id) t1
inner join
    (SELECT
        p2.member_id,
        count(r2.review_id) as reviews
    from
        member_profile p2
    inner join 
        rest_review r2   on p2.member_id = r2.member_id
    group by
        p2.member_id
    order by
        count(r2.review_id) desc
    limit 1) t2 on t1.member_id = t2.member_id
order by
    t1.review_date asc,
    t1.review_text asc