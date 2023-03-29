CREATE VIEW V_GENERATED_DATES AS
SELECT
    *
FROM
    (SELECT
        D.GENERATED_DATE::date
     FROM
        GENERATE_SERIES(timestamp '2022,01,01',
                        timestamp '2022,01,31',
                        interval '1 day') AS D(GENERATED_DATE)
    ) AS DATES
ORDER BY
    GENERATED_DATE;

SELECT * FROM V_GENERATED_DATES;
    
