Select
    distinct t1.cart_id
from
    cart_products t1,
    (SELECT
    cart_id,
    name
from
    cart_products
where
    name = 'Yogurt') as t2
where
    t1.name = 'Milk' and
    t1.cart_id = t2.cart_id



    