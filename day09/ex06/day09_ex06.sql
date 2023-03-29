CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar default 'Dmitriy',
    IN pprice bigint default 500,
    IN pdate date default '08,01,2022') RETURNS TABLE (name varchar) AS $$
    BEGIN
        RETURN QUERY
            SELECT
                pizzeria.name
            FROM
                pizzeria, person, person_visits, menu
            WHERE
                person.name = pperson
                and person_visits.pizzeria_id = pizzeria.id
                and person_visits.visit_date = pdate
                and person_visits.person_id = person.id
                and menu.pizzeria_id = pizzeria.id
                and menu.price < pprice;
    END;
    $$ LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
