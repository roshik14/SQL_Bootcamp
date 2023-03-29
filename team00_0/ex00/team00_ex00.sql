WITH RECURSIVE funcname AS (
    SELECT
        point1 AS start_point,
        cast(0 as bigint) AS price,
        ARRAY[point1] AS result_path
        FROM TSP WHERE point1 = 'a'

    UNION
    SELECT 
        point1 AS start_point,
        funcname.price + TSP.cost AS price, 
        funcname.result_path || TSP.point1 AS result_path
        FROM TSP 
        JOIN funcname ON funcname.start_point = TSP.point2 AND NOT TSP.point1 = ANY(result_path)
    ),
one_more_step AS (
    SELECT
        price + (SELECT cost FROM TSP WHERE point2 = 'a' AND result_path[4] = point1) AS total_cost,
        array_append(result_path, 'a') AS tour
    FROM
        funcname
    WHERE
        array_length(result_path, 1) = 4
    ORDER BY total_cost, tour
)

SELECT * FROM one_more_step
WHERE total_cost IN (SELECT MIN(total_cost) FROM one_more_step)