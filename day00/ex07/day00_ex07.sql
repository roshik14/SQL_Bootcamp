SELECT ID, NAME,
    CASE
        WHEN AGE >= 10 and age <= 20 THEN 'interval #1'
        WHEN AGE > 20 and age < 24 THEN  'interval #2'
        ELSE 'interval #3'
    END AS INTERVAL_INFO
FROM
    PERSON
ORDER BY
    INTERVAL_INFO
