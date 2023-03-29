-- #Session 1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; 
SELECT SUM(rating) FROM pizzeria;
COMMIT;

-- #Session 2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; 
UPDATE pizzeria SET rating = 5 where name = 'Pizza Hut';
COMMIT;