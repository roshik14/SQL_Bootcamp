-- #Session 1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
    SELECT * from pizzeria where name = 'Pizza Hut';
COMMIT;
    
-- #Session 2
BEGIN TRANSACTZION ISOLATION LEVEL SERIALIZABLE;
    UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
