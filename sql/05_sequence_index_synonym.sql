-- Additional Oracle database objects

-- Sequence for generating passenger IDs.
-- Choose a start value that does not collide with existing IDs.
CREATE SEQUENCE passenger_seq
    START WITH 4
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE;

-- Example:
-- INSERT INTO Passenger_Info (p_id, p_name, p_mob_no, p_address, p_email)
-- VALUES (passenger_seq.NEXTVAL, 'Riya', '9988776655', 'Nagpur', 'riya@example.com');

-- Index to speed up lookups by passenger name.
CREATE INDEX idx_passenger_name ON Passenger_Info(p_name);

-- Private synonym for a shorter object name.
CREATE SYNONYM PassengerPayments FOR Passenger_Payment_View;

-- Example:
-- SELECT * FROM PassengerPayments;
