CREATE UNIQUE INDEX idx_person_order_order_date ON person_order USING btree (person_id, menu_id)
WHERE order_date = '2022,01,01';

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT
    PERSON_ID,
    MENU_ID
FROM
    PERSON_ORDER
WHERE
    ORDER_DATE = '2022,01,01';

SET enable_seqscan = ON;
