//01) Escribe una consulta que recupere los Vuelos (flights) y su identificador que figuren con status On Time

SELECT flight_id, flight_no, status
FROM flights
WHERE status = 'On Time';

//02) Escribe una consulta que extraiga todas las columnas de la tabla bookings y refleje todas las reservas que han supuesto una cantidad total mayor a 1.000.000 (Unidades monetarias)

SELECT *
FROM bookings
WHERE total_amount > 1000000;

//03) Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircrafts_data).

SELECT *
FROM aircrafts_data;

//04) Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de vuelo que han volado con un Boeing 737 (Código Modelo Avión = 733)

SELECT flight_id
FROM flights
WHERE aircraft_code = '733';

//05) Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina

SELECT t.*, tf.fare_conditions, tf.amount
FROM tickets t
JOIN ticket_flights tf ON tf.ticket_no = t.ticket_no
WHERE t.passenger_name ILIKE 'irina%';

//06) Mostrar las ciudades con más de un aeropuerto

SELECT city, COUNT(*) AS num_aeropuertos
FROM airports_data
GROUP BY city
HAVING COUNT(*) > 1;

//07) Mostrar el número de vuelos por modelo de avión

SELECT a.model, COUNT(*) AS num_flights
FROM flights f
JOIN aircrafts_data a ON a.aircraft_code = f.aircraft_code
GROUP BY a.model;

//08) Reservas con más de un billete (varios pasajeros)

SELECT book_ref, COUNT(*) AS num_tickets
FROM tickets
GROUP BY book_ref
HAVING COUNT(*) > 1;

//09) Vuelos con retraso de salida superior a una hora

SELECT flight_id, flight_no, (actual_departure - scheduled_departure) AS departure_delay
FROM flights
WHERE actual_departure IS NOT NULL
  AND actual_departure - scheduled_departure > INTERVAL '1 hour';