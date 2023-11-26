SELECT
    b.author_id,
    a.author_name,
    b.category,
    SUM(b.price * s.sales) AS total_sales
FROM
    book b
INNER JOIN
    author a ON b.author_id = a.author_id
INNER JOIN
    book_sales s ON b.book_id = s.book_id
WHERE
    s.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY
    b.author_id,
    a.author_name,
    b.category
ORDER BY
    b.author_id ASC,
    b.category DESC;
