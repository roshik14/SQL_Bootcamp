CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts USING btree (person_id, pizzeria_id);

SET enable_seqscan = OFF;
EXPLAIN ANALYZE
SELECT
    *
FROM
    person_discounts
WHERE
    pizzeria_id > 1;
SET enable_seqscan = ON;
