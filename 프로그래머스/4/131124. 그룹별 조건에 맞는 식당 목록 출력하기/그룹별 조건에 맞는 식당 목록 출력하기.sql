SELECT
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
    limit 1