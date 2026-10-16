# Database Design

## Entities

- **Passenger_Info** — passenger identity and contact details.
- **Airport** — airport name and city.
- **Flight** — flight identifier, airline/flight label, departure time, and associated airport.
- **Payment_Info** — payment method and amount linked to a passenger and flight.

## Relationships

- One airport can be associated with many flight records.
- One passenger can have multiple payment records.
- One flight can have multiple payment records.
- Each payment references exactly one passenger and one flight.

## Integrity rules

- Each table has a primary key.
- `Flight.a_id` references `Airport.a_id`.
- `Payment_Info.p_id` references `Passenger_Info.p_id`.
- `Payment_Info.f_id` references `Flight.f_id`.
- Payment amounts must be zero or greater.

## Simplifications

The original academic exercise focuses on SQL commands and database objects. This schema is intentionally small: departure time is stored as text for simplicity, and flights are associated with one airport rather than modelling separate origin/destination airports, dates, seats, bookings, or ticketing workflows. These would be sensible future extensions for a more realistic system.
