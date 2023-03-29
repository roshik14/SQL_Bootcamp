SELECT
    *
FROM
    (SELECT
        person.name,
        COUNT(*) as count_of_visits
    FROM
        person, person_visits
    WHERE
        person.id = person_visits.person_id
    GROUP BY
        person.name) as pv
WHERE
    count_of_visits > 3
