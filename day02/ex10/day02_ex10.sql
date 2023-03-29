WITH persons AS (
    SELECT
        *
    FROM
        PERSON as p1
    WHERE EXISTS (
        select 1 from person as p2
        where p2.address = p1.address and p2.name <> p1.name
        )
)

SELECT
    PERSON.NAME AS PERSON_NAME1,
    PERSONS.NAME AS PERSON_NAME2,
    PERSON.ADDRESS AS COMMON_ADDRESS
FROM
    PERSON
JOIN PERSONS ON PERSON.ADDRESS = PERSONS.ADDRESS AND PERSONS.NAME <> PERSON.NAME
WHERE
    PERSON.ID > PERSONS.ID

