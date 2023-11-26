-- 코드를 입력하세요
SELECT
    *
    #round(sum(r.review_score)/count(r.review_id), 3) as score
from
    rest_info i
inner join
    rest_review r
on
    i.rest_id = r.rest_id
where
    i.address like '서울%'
order by
    i.rest_name