-- 코드를 입력하세요
(SELECT
    *,
    concat('/home/grep/src/', f.board_id, '/', f.file_id, f.file_name, f.file_ext) as file_path
from
    used_goods_board b
inner join
    used_goods_file f
on
    b.board_id = f.board_id
order by
    views desc)

