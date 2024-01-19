CREATE TABLE Company (
                         id serial primary key,
                         name varchar
);
INSERT INTO Company(id,name)values
                                (1, 'Don_avia'),
                                (2, 'Aeroflot'),
                                (3, 'Dale_avia'),
                                (4, 'air_France'),
                                (5, 'British_AWid');

CREATE TABLE Passengers(
                           id_passengers int primary key  ,
                           name varchar not null
);

INSERT INTO Passengers( name)values
                                 ('Bruce Willis'),
                                 ('George Clooney'),
                                 ('Kevin Costner'),
                                 ('Donald Sutherland'),
                                 ('Jennifer Lopez'),
                                 ('Ray Liotta'),
                                 ('Samuel L. Jackson'),
                                 ('Nikole Kidman'),
                                 ('Alan Rickman'),
                                 ('Kurt Russell'),
                                 ('Harrison Ford'),
                                 ('Russell Crowe'),
                                 ('Steve Martin'),
                                 ('Michael Caine'),
                                 ('Angelina Jolie'),
                                 ('Mel Gibson'),
                                 ('Michael Douglas'),
                                 ('John Travolta'),
                                 ('Sylvester Stallone'),
                                 ('Tommy Lee Jones'),
                                 ('Catherine Zeta-Jones'),
                                 ('Antonio Banderas'),
                                 ('Kim Basinger'),
                                 ('Sam Neill'),
                                 ('Gary Oldman'),
                                 ('ClINT Eastwood'),
                                 ('Brad Pitt'),
                                 ('Johnny Depp'),
                                 ('Pierce Brosnan'),
                                 ('Sean Connery'),
                                 ('Bruce Willis'),
                                 ('Mullah Omar');

CREATE  TABLE pass_in_trip(
                              id serial primary key ,
                              trip int  ,
                              passenger_id int ,
                              place varchar,
                              foreign key  (passenger_id) references Passengers(id_passengers)
);

INSERT INTO pass_in_trip(trip, passenger_id, place) values
                                                        (1100, 1, '1a'),
                                                        (1123, 3, '2a'),
                                                        (1123, 1, '4c'),
                                                        (1123, 6, '4b'),
                                                        (1124, 2, '2d'),
                                                        (1145, 3, '2c'),
                                                        (1181, 1, '1a'),
                                                        (1181, 6, '1b'),
                                                        (1181, 8, '3c'),
                                                        ( 1181, 5, '1b'),
                                                        ( 1182, 5, '4b'),
                                                        ( 1187, 8, '3a'),
                                                        ( 1188, 8, '3a'),
                                                        ( 1182, 9, '6d'),
                                                        ( 1145, 5, '1d'),
                                                        ( 1187, 10, '3d'),
                                                        ( 8882, 37, '1a'),
                                                        ( 7771, 37, '1c'),
                                                        ( 7772, 37, '1a'),
                                                        ( 8881, 37, '1d'),
                                                        ( 7778, 10, '2a'),
                                                        ( 7772, 10, '3a'),
                                                        ( 7771, 11, '4a'),
                                                        ( 7771, 11, '1b'),
                                                        ( 7771, 11, '5a'),
                                                        ( 7772, 12, '1d'),
                                                        ( 7773, 13, '2d'),
                                                        ( 7772, 13, '1b'),
                                                        ( 8882, 14, '3d'),
                                                        ( 7771, 14, '4d'),
                                                        ( 7771, 14, '5d'),
                                                        ( 7772, 14, '1c');

CREATE TABLE trip (
                      id  serial primary key ,
                      company_id int ,
                      plane varchar,
                      town_from varchar ,
                      town_to varchar,
                      time_out varchar,
                      time_in varchar
);
INSERT INTO trip(company_id, plane, town_from, town_to, time_out, time_in) values
                                                                               ( 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01T14:30:00.000Z', '1900-01-01T17:50:00.000Z'),
                                                                               ( 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01T08:12:00.000Z', '1900-01-01T11:45:00.000Z'),
                                                                               ( 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01T16:20:00.000Z', '1900-01-02T03:40:00.000Z'),
                                                                               ( 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01T09:00:00.000Z', '1900-01-01T19:50:00.000Z'),
                                                                               ( 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01T09:35:00.000Z', '1900-01-01T11:23:00.000Z'),
                                                                               ( 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01T17:55:00.000Z', '1900-01-01T20:01:00.000Z'),
                                                                               ( 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01T06:12:00.000Z', '1900-01-01T08:01:00.000Z'),
                                                                               ( 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01T12:35:00.000Z', '1900-01-01T14:30:00.000Z'),
                                                                               ( 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01T15:42:00.000Z', '1900-01-01T17:39:00.000Z'),
                                                                               ( 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01T22:50:00.000Z', '1900-01-02T00:48:00.000Z'),
                                                                               ( 1, 'TU-154', 'Rostov', 'Moscow', '1900-01-01T23:30:00.000Z', '1900-01-02T01:11:00.000Z'),
                                                                               ( 1, 'TU-154', 'Moscow', 'Rostov', '1900-01-01T04:00:00.000Z', '1900-01-01T05:45:00.000Z'),
                                                                               ( 5, 'Boeing', 'London', 'Singapore', '1900-01-01T01:00:00.000Z', '1900-01-01T11:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'Singapore', 'London', '1900-01-01T12:00:00.000Z', '1900-01-02T02:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'London', 'Singapore', '1900-01-01T03:00:00.000Z', '1900-01-01T13:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'Singapore', 'London', '1900-01-01T14:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'London', 'Singapore', '1900-01-01T09:00:00.000Z', '1900-01-01T20:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'Singapore', 'London', '1900-01-01T18:00:00.000Z', '1900-01-02T08:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'London', 'Singapore', '1900-01-01T18:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'Singapore', 'London', '1900-01-01T22:00:00.000Z', '1900-01-02T12:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'London', 'Paris', '1900-01-01T03:00:00.000Z', '1900-01-01T04:00:00.000Z'),
                                                                               ( 5, 'Boeing', 'Paris', 'London', '1900-01-01T22:00:00.000Z', '1900-01-01T23:00:00.000Z');

SELECT name
from Passengers;

SELECT name
FROM company;

SELECT *
FROM trip
WHERE town_from = 'Moscow';

SELECT name
FROM passengers
WHERE name LIKE '%man';

SELECT COUNT(*) AS num_flights
FROM trip
WHERE plane = 'TU-134';

SELECT  name
FROM trip
         JOIN company c ON company_id = c.id
WHERE plane = 'Boeing';

SELECT  plane
FROM trip
WHERE town_to = 'Moscow';

SELECT  c.name
FROM trip f
         JOIN company c ON f.company_id = c.id
WHERE f.town_from = 'Vladivostok';

SELECT t.id, COUNT(*) AS num_passengers
FROM pass_in_trip t
         JOIN trip tr ON t.trip = tr.id
GROUP BY t.id;
SELECT  f.town_to
FROM trip f
         JOIN pass_in_trip t ON f.id = t.trip
         JOIN passengers p ON t.passenger_id = p.id_passengers
WHERE p.name = 'Bruce Willis';

SELECT f.time_in
FROM trip f
         JOIN pass_in_trip t ON f.id = t.trip
         JOIN passengers p ON t.passenger_id = p.id_passengers
WHERE p.name = 'Steve Martin' AND f.town_to = 'London';

SELECT COUNT(*) AS num_flights
FROM trip f
         JOIN company c ON f.company_id = c.id
WHERE f.town_from = 'Rostov' AND f.town_to = 'Moscow';

SELECT id_passengers, name
FROM passengers
ORDER BY LENGTH(name) DESC
    LIMIT 1;

SELECT  p1.name
FROM passengers p1
         JOIN passengers p2 ON p1.name = p2.name AND p1.id_passengers <> p2.id_passengers;

SELECT p.id_passengers, p.name, COUNT(t.id) AS num_trips
FROM passengers p
         JOIN pass_in_trip t ON p.id_passengers = t.passenger_id
GROUP BY p.id_passengers, p.name, p.name
HAVING COUNT(t.id) > 0
ORDER BY num_trips DESC, p.name ASC;

