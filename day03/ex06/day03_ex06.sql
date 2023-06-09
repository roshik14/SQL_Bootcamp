WITH PIZZAS AS (
    SELECT
        *
    FROM
        MENU as MENU_1
    WHERE EXISTS (
        SELECT 1 FROM MENU AS MENU_2
        WHERE MENU_2.PRICE = MENU_1.PRICE
    )
)

SELECT
    MENU.PIZZA_NAME AS PIZZA_NAME,
    PIZZERIA.NAME AS PIZZERIA_NAME_1,
    PIZZERIA_2.NAME AS PIZZERIA_NAME_2,
    MENU.PRICE AS PRICE
FROM
    MENU
JOIN PIZZAS ON
    MENU.PIZZA_NAME = PIZZAS.PIZZA_NAME AND MENU.PRICE = PIZZAS.PRICE
JOIN PIZZERIA ON
    MENU.PIZZERIA_ID = PIZZERIA.ID
JOIN (SELECT ID, NAME FROM PIZZERIA) AS PIZZERIA_2 ON PIZZAS.PIZZERIA_ID = PIZZERIA_2.ID
WHERE
    MENU.ID > PIZZAS.ID
ORDER BY
    PIZZA_NAME
