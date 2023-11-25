SELECT
    MONTH(t1.start_date) AS month,
    t1.car_id,
    COUNT(t1.history_id) AS records
FROM
    car_rental_company_rental_history t1
INNER JOIN (
    SELECT
        car_id
    FROM
        car_rental_company_rental_history
    WHERE
        start_date BETWEEN '2022-08-01' AND '2022-10-31'
    GROUP BY
        car_id
    HAVING
        COUNT(history_id) >= 5
) t2 ON t1.car_id = t2.car_id
WHERE
    t1.start_date BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY
    t1.car_id, MONTH(t1.start_date)
ORDER BY
    MONTH(t1.start_date) ASC,
    t1.car_id DESC;
