INSERT INTO PERSON_ORDER
SELECT
    NUM_ID,
    ID,
    (SELECT ID FROM MENU WHERE PIZZA_NAME = 'greek pizza') AS MENU_ID,
    '2022,02,25' as ORDER_DATE
FROM
    generate_series(
        (SELECT MAX(ID) FROM PERSON_ORDER) + 1,
        (SELECT MAX(ID) FROM PERSON_ORDER) + (SELECT COUNT(ID) FROM PERSON)
    ) AS NUM_ID
JOIN PERSON ON (NUM_ID - (SELECT MAX(ID) FROM PERSON_ORDER)) = PERSON.ID
