INSERT INTO MENU VALUES (
    (SELECT MAX(ID) FROM MENU) + 1,
    (SELECT ID FROM PIZZERIA WHERE NAME = 'Dominos'),
    'sicilian pizza',
    900
)
