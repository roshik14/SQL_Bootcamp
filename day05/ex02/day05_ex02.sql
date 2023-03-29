CREATE INDEX idx_person_name ON person USING btree (upper(name));

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT NAME FROM PERSON WHERE UPPER(NAME) = 'DENIS';

SET enable_seqscan = ON;
