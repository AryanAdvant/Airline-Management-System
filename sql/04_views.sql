-- Views: reusable reporting query

CREATE OR REPLACE VIEW Passenger_Payment_View AS
SELECT p.p_name,
       f.f_name,
       pay.pay_type,
       pay.pay_amount
FROM Payment_Info pay
JOIN Passenger_Info p ON p.p_id = pay.p_id
JOIN Flight f ON f.f_id = pay.f_id;

-- Query the view
SELECT * FROM Passenger_Payment_View;

-- This view is intended for reporting. Update base tables directly for clarity.
