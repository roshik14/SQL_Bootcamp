SELECT
    GENERATED_DATE AS MISSING_DATE
FROM
    V_GENERATED_DATES
WHERE
    GENERATED_DATE NOT IN (
        SELECT DISTINCT
            VISIT_DATE
        FROM
            PERSON_VISITS
    );
