SELECT
    PIZZA_NAME,
    PIZZERIA.NAME AS PIZZERIA_NAME
FROM
    PERSON_ORDER
JOIN PERSON ON PERSON.ID = PERSON_ID
jOIN MENU ON MENU_ID = MENU.ID
JOIN PIZZERIA ON PIZZERIA.ID = MENU.PIZZERIA_ID
WHERE
    PERSON.NAME = 'Anna' OR PERSON.NAME = 'Denis'
ORDER BY
    PIZZA_NAME,
    PIZZERIA_NAME
