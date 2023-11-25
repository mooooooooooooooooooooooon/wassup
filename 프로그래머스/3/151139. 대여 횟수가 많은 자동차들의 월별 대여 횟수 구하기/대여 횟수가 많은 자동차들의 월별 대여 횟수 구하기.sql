SELECT
        car_id,
        count(history_id)
    from
        car_rental_company_rental_history
    where
        start_date between '2022-08-01' and '2022-10-31'
    group by
        car_id
    having
        count(history_id) >= 5
    order by
        start_date asc
