CREATE TABLE TSP (
    id bigint primary key,
    point1 varchar not null,
    point2 varchar not null,
    cost bigint not null
);

INSERT INTO TSP VALUES(1, 'a', 'b', 10);
INSERT INTO TSP VALUES(2, 'a', 'c', 15);
INSERT INTO TSP VALUES(3, 'a', 'd', 20);

INSERT INTO TSP VALUES(4, 'b', 'a', 10);
INSERT INTO TSP VALUES(5, 'b', 'c', 35);
INSERT INTO TSP VALUES(6, 'b', 'd', 25);

INSERT INTO TSP VALUES(7, 'c', 'a', 15);
INSERT INTO TSP VALUES(8, 'c', 'b', 35);
INSERT INTO TSP VALUES(9, 'c', 'd', 30);

INSERT INTO TSP VALUES(10, 'd', 'a', 20);
INSERT INTO TSP VALUES(11, 'd', 'b', 25);
INSERT INTO TSP VALUES(12, 'd', 'c', 30);
