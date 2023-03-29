SELECT
    address,
    formula,
    average,
    CASE WHEN
        formula > average THEN 'true'
    ELSE
        'false'
    END
FROM
    (SELECT
        person.address,
        ROUND((MAX(age) - (CAST(MIN(age) as numeric) / MAX(age))), 2) as formula,
        ROUND(AVG(age), 2) as average
    FROM
        person
    GROUP BY
        person.address) AS pi
ORDER BY
    address
