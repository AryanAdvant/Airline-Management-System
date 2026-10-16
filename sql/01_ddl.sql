-- Airline Management System
-- DDL: table and constraint definitions
-- Target: Oracle SQL / SQL*Plus

-- Run in a dedicated practice schema. Drop existing objects manually if needed.

CREATE TABLE Passenger_Info (
    p_id       NUMBER(4) CONSTRAINT pk_passenger PRIMARY KEY,
    p_name     VARCHAR2(50) NOT NULL,
    p_mob_no   VARCHAR2(15),
    p_address  VARCHAR2(100),
    p_email    VARCHAR2(100)
);

CREATE TABLE Airport (
    a_id    NUMBER(4) CONSTRAINT pk_airport PRIMARY KEY,
    a_name  VARCHAR2(60) NOT NULL,
    a_city  VARCHAR2(40) NOT NULL
);

CREATE TABLE Flight (
    f_id       NUMBER(4) CONSTRAINT pk_flight PRIMARY KEY,
    f_name     VARCHAR2(40) NOT NULL,
    dept_time  VARCHAR2(5) NOT NULL,
    a_id       NUMBER(4) NOT NULL,
    CONSTRAINT fk_flight_airport
        FOREIGN KEY (a_id) REFERENCES Airport(a_id)
);

CREATE TABLE Payment_Info (
    pay_id      NUMBER(4) CONSTRAINT pk_payment PRIMARY KEY,
    pay_type    VARCHAR2(20) NOT NULL,
    pay_amount  NUMBER(8,2) NOT NULL,
    p_id        NUMBER(4) NOT NULL,
    f_id        NUMBER(4) NOT NULL,
    CONSTRAINT ck_payment_amount CHECK (pay_amount >= 0),
    CONSTRAINT fk_payment_passenger
        FOREIGN KEY (p_id) REFERENCES Passenger_Info(p_id),
    CONSTRAINT fk_payment_flight
        FOREIGN KEY (f_id) REFERENCES Flight(f_id)
);

-- Verify created tables:
-- SELECT table_name FROM user_tables ORDER BY table_name;
