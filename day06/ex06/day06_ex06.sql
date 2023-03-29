CREATE SEQUENCE seq_person_discounts
INCREMENT 1
START 1
OWNED BY person_discounts.id;

SELECT setval('seq_person_discounts', (SELECT COUNT(id) FROM person_discounts) + 1);

