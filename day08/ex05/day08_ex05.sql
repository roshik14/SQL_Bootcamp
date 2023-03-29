-- #Session 1
BEGIN;
SELECT SUM(rating) FROM pizzeria;
COMMIT;

-- #Session 2
BEGIN;
UPDATE pizzeria SET rating = 1 where name = 'Pizza Hut';
COMMIT;
