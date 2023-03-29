CREATE OR REPLACE FUNCTION fnc_fibonacci(IN pstop integer default 10) RETURNS TABLE(fib_numbers integer) AS $$
    BEGIN
        RETURN QUERY
            WITH RECURSIVE fib_cte(first_num, second_num) AS (
                VALUES(0, 1)
                UNION ALL
                SELECT greatest(first_num, second_num), first_num + second_num as fib from fib_cte WHERE second_num < pstop
            )
            SELECT first_num as fib_numbers FROM fib_cte;
    END;
$$ LANGUAGE plpgsql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
