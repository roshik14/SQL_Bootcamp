SELECT
    person.address,
    pizzeria.name,
    COUNT(*) as count_of_orders
FROM
    person, person_order, menu, pizzeria
WHERE
    person.id = person_order.person_id and menu.id = person_order.menu_id and pizzeria.id = menu.pizzeria_id
GROUP BY
    person.address,
    pizzeria.name
ORDER BY
    person.address,
    pizzeria.name
