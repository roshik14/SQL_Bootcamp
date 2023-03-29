SELECT DISTINCT
    person.name
FROM
    person, person_order
WHERE
    person.id = person_order.person_id
ORDER BY
    person.name
