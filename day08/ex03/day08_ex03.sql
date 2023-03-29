-- #Session 1
BEGIN;
    SELECT * from pizzeria where name = 'Pizza Hut';
COMMIT;
    
-- #Session 2
BEGIN;
    UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
