select
    user_id,
    nickname,
    concat(city, " ", street_address1, " ", street_address2) as 전체주소,
    CONCAT(SUBSTRING(tlno, 1, 3), '-', SUBSTRING(tlno, 4, 4), '-', SUBSTRING(tlno, 8, 4)) AS 전화번호
    
from
    used_goods_user t1
inner join
    (select
        b.writer_id, count(b.writer_id) as '게시글 수'
    from
        used_goods_board b
    left outer join
        used_goods_user u
    on
        b.writer_id = u.user_id
    group by
        b.writer_id
    having
        count(b.writer_id) >= 3) t2
on
    t1.user_id = t2.writer_id
order by
    t1.user_id desc