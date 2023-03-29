SELECT
    DAY AS MISSING_DATE
FROM
    (SELECT
        T.DAY::date
     FROM
        GENERATE_SERIES(timestamp '2022,01,01',
                        timestamp '2022,01,10',
                        interval '1 day') AS T(DAY)
    ) AS DATES
LEFT JOIN
    PERSON_VISITS ON DAY = VISIT_DATE AND (PERSON_ID = 1 OR PERSON_ID = 2)
WHERE
    VISIT_DATE IS NULL
ORDER BY
    MISSING_DATE
