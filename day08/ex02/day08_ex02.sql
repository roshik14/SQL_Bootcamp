-- Session #1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
UPDATE pizzeria SET rating = 4
WHERE name = 'Pizza Hut';
COMMIT;

-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
UPDATE pizzeria SET rating = 3.6
WHERE name = 'Pizza Hut';
COMMIT;
