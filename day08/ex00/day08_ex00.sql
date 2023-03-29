BEGIN;
UPDATE pizzeria SET rating = 5
WHERE name = 'Pizza Hut';
COMMIT;
