SELECT
    person.name,
    pizza_name,
    price,
    cast(price -
        (price * ((SELECT
                    discount
                  FROM
                    person_discounts
                  WHERE person.id = person_discounts.person_id LIMIT 1) * 0.01))
    as bigint) as discount_price,
    pizzeria.name as pizzeria_name
FROM
    person_order, person, menu, pizzeria
WHERE
    person.id = person_order.person_id
    AND menu.id = person_order.menu_id
    AND pizzeria.id = menu.pizzeria_id
ORDER by
    person.name,
    pizza_name;
