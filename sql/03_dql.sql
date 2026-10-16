-- DQL: SELECT queries, filtering, sorting, and joins

-- View all records
SELECT * FROM Passenger_Info;
SELECT * FROM Airport;
SELECT * FROM Flight;
SELECT * FROM Payment_Info;

-- Filter and sort passengers
SELECT p_id, p_name, p_city
FROM Passenger_Info
ORDER BY p_name;


-- Flights with their associated airport
SELECT f.f_id, f.f_name, f.dept_time, a.a_name, a.a_city
FROM Flight f
JOIN Airport a ON a.a_id = f.a_id
ORDER BY f.dept_time;

-- Payments with passenger and flight details
SELECT p.p_name, f.f_name, pay.pay_type, pay.pay_amount
FROM Payment_Info pay
JOIN Passenger_Info p ON p.p_id = pay.p_id
JOIN Flight f ON f.f_id = pay.f_id
ORDER BY p.p_name;

-- Aggregate: total payment amount per passenger
SELECT p.p_id, p.p_name, SUM(pay.pay_amount) AS total_paid
FROM Passenger_Info p
JOIN Payment_Info pay ON pay.p_id = p.p_id
GROUP BY p.p_id, p.p_name
ORDER BY total_paid DESC;
