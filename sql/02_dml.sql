-- DML: sample data for Airline Management System
-- Run after sql/01_ddl.sql. Sample data is fictional.

INSERT INTO Passenger_Info VALUES (1, 'Rahul', '9876543210', 'Pune', 'rahul@example.com');
INSERT INTO Passenger_Info VALUES (2, 'Sneha', '9123456780', 'Mumbai', 'sneha@example.com');
INSERT INTO Passenger_Info VALUES (3, 'Amit', '9012345678', 'Nagpur', 'amit@example.com');

INSERT INTO Airport VALUES (101, 'Lohegaon Airport', 'Pune');
INSERT INTO Airport VALUES (102, 'Chhatrapati Shivaji Maharaj Airport', 'Mumbai');
INSERT INTO Airport VALUES (103, 'Dr. Babasaheb Ambedkar Airport', 'Nagpur');

INSERT INTO Flight VALUES (201, 'IndiGo 6E', '10:00', 101);
INSERT INTO Flight VALUES (202, 'Air India', '12:30', 102);
INSERT INTO Flight VALUES (203, 'SpiceJet', '15:15', 103);

INSERT INTO Payment_Info VALUES (301, 'UPI', 4500, 1, 201);
INSERT INTO Payment_Info VALUES (302, 'Card', 5200, 3, 202);
INSERT INTO Payment_Info VALUES (303, 'Cash', 3000, 2, 203);

COMMIT;

-- Example DML statements (uncomment individually to practice):
-- UPDATE Passenger_Info SET p_address = 'Pune City' WHERE p_id = 1;
-- UPDATE Payment_Info SET pay_amount = 4700 WHERE pay_id = 301;
-- DELETE FROM Payment_Info WHERE pay_id = 303;
