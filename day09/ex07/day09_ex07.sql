CREATE OR REPLACE FUNCTION func_minimum(arr NUMERIC[]) RETURNS numeric AS $$
    declare res numeric;
    BEGIN
        SELECT INTO res MIN(val) FROM unnest(arr) as val;
        RETURN res;
    END;
    $$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
