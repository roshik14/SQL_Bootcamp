SELECT DISTINCT
    (SELECT
        NAME
     FROM
        PERSON
     WHERE
        PERSON_ORDER.PERSON_ID = ID
    ) AS NAME,
    (SELECT
        CASE
            WHEN NAME='Denis' then 'true'
            ELSE 'false'
        END AS CHECK_NAME
    FROM
        PERSON
    WHERE
        PERSON_ORDER.PERSON_ID = ID
    ) AS CHECK_NAME
FROM
    PERSON_ORDER
WHERE
    (MENU_ID=13 OR MENU_ID=14 OR MENU_ID=18) AND ORDER_DATE='2022,01,07'
