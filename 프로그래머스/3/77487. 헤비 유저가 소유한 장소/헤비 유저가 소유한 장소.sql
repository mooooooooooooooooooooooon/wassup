  (SELECT
        id,
        name,
        host_id
    from
        places
   where
   count(id) >= 2
    group by
        host_id)