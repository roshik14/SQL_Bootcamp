SELECT
    pizzeria.name,
    COUNT(*) as amount_of_orders,
    ROUND(AVG(price), 2) as average_price,
    MAX(price) as max_price,
    MIN(price) as min_price
FROM
    pizzeria, person_order, menu
WHERE
    person_order.menu_id = menu.id and pizzeria.id = menu.pizzeria_id
GROUP BY
    pizzeria.name
ORDER BY
    pizzeria.name
