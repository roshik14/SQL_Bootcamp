WITH VISITS AS (
    SELECT
        PERSON.ID AS PERSON_ID,
        PIZZERIA_ID,
        VISIT_DATE
    FROM
        PERSON
    JOIN PERSON_VISITS ON PERSON.ID = PERSON_ID
    WHERE
        NAME = 'Andrey'
)

SELECT DISTINCT
    PIZZERIA.NAME AS PIZZERIA_NAME
FROM
    PERSON_ORDER
JOIN VISITS ON PERSON_ORDER.PERSON_ID = VISITS.PERSON_ID AND VISIT_DATE != ORDER_DATE
JOIN PIZZERIA ON PIZZERIA.ID = VISITS.PIZZERIA_ID
