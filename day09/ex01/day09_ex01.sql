CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit() RETURNS TRIGGER as $trg_person_update_audit$
BEGIN
    INSERT INTO person_audit VALUES(now(), 'U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    RETURN NEW;
END;
$trg_person_update_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit
BEFORE UPDATE ON person
    FOR EACH ROW EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
SELECT * FROM person_audit;
