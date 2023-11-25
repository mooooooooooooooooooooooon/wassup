-- 코드를 입력하세요
select
    t1.id,
    t1.name,
    t1.host_id
from
    places t1
inner join
    (SELECT
        host_id,
        count(id) as result
    from
        places
    group by
        host_id) as t2
on t1.host_id = t2.host_id

where
    t2.result >= 2
order by
    t1.id asc