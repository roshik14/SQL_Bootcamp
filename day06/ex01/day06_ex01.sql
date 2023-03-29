INSERT INTO person_discounts
SELECT
    ROW_NUMBER() OVER() as id,
    PERSON_ID,
    PIZZERIA_ID,
    CASE
        WHEN order_count = 1 THEN 10.5
        WHEN order_count = 2 THEN 22
        ELSE 30
    END
FROM
    (SELECT
        person_order.person_id,
        pizzeria.id as pizzeria_id,
        COUNT(*) as order_count
     FROM
        person_order, person, menu, pizzeria
     WHERE
        person.id = person_order.person_id
        AND menu.id = person_order.menu_id
        AND pizzeria.id = menu.pizzeria_id
     GROUP BY
        1, 2
    ) AS orders
ORDER BY
    person_id,
    pizzeria_id
