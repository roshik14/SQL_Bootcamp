CREATE OR REPLACE FUNCTION fnc_persons_female() RETURNS TABLE(id int, name varchar, age bigint, gender varchar, address varchar) AS $$
    SELECT * FROM person WHERE gender = 'female' $$
    LANGUAGE SQL;

CREATE OR REPLACE FUNCTION fnc_persons_male() RETURNS TABLE(id int, name varchar, age bigint, gender varchar, address varchar) AS $$
    SELECT * FROM person WHERE gender = 'male' $$
    LANGUAGE SQL;

SELECT * FROM fnc_persons_female();
SELECT * FROM fnc_persons_male();
