(SELECT
    name,
    COUNT(*) as count,
    'visit' as action_type
FROM
    pizzeria, person_visits
WHERE
    person_visits.pizzeria_id = pizzeria.id
GROUP BY
    pizzeria.id
ORDER BY
    count desc
LIMIT 3)
UNION ALL
(SELECT
    name,
    COUNT(*) as count,
    'order' as action_type
FROM
    pizzeria, person_order, menu
WHERE
    person_order.menu_id = menu.id and menu.pizzeria_id = pizzeria.id
GROUP BY
    pizzeria.id
ORDER BY
    count desc
LIMIT 3)
ORDER BY
    action_type,
    count desc
