INSERT INTO PERSON_VISITS VALUES 
(
    (SELECT MAX(ID) FROM PERSON_VISITS) + 1,
    (SELECT ID FROM PERSON WHERE NAME = 'Denis'),
    (SELECT ID FROM PIZZERIA WHERE NAME = 'Dominos'),
    '2022,02,24'
);
INSERT INTO PERSON_VISITS VALUES 
(
    (SELECT MAX(ID) FROM PERSON_VISITS) + 1,
    (SELECT ID FROM PERSON WHERE NAME = 'Irina'),
    (SELECT ID FROM PIZZERIA WHERE NAME = 'Dominos'),
    '2022,02,24'
)