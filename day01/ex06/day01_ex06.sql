SELECT DISTINCT
    ORDER_DATE AS ACTION_DATE,
    NAME AS PERSON_NAME
FROM
    (SELECT
        *
     FROM
        PERSON
     CROSS JOIN
        PERSON_ORDER, PERSON_VISITS
     WHERE
        ORDER_DATE = VISIT_DATE AND PERSON.ID = PERSON_ORDER.PERSON_ID
    ) AS RESULTS
ORDER BY
    ACTION_DATE,
    PERSON_NAME DESC
