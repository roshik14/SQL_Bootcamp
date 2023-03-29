CREATE UNIQUE INDEX idx_menu_unique ON menu USING btree(pizzeria_id, pizza_name);

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT
    PIZZERIA_ID,
    PIZZA_NAME
FROM
    MENU
WHERE
    MENU.ID = PIZZERIA_ID AND PIZZA_NAME = 'cheeze pizza';

SET enable_seqscan = ON;
