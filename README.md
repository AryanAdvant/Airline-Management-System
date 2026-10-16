# Airline Management System (SQL)

A database-focused Airline Management System built as a DBMS micro-project using **Oracle SQL / SQL*Plus**. The repository organizes schema creation, sample data, queries, views, sequences, indexes, synonyms, and transaction/privilege examples into separate scripts.

## Features

- Passenger, airport, flight, and payment records
- Primary keys, foreign keys, and basic integrity constraints
- DDL, DML, and DQL examples
- SQL joins and a passenger-payment view
- Sequence, index, and synonym examples
- DCL privileges with `GRANT` and `REVOKE`
- TCL transaction examples with `COMMIT` and `ROLLBACK`

## Repository layout

| Path | Purpose |
| --- | --- |
| `sql/01_ddl.sql` | Create tables and constraints |
| `sql/02_dml.sql` | Insert sample records and demonstrate updates/deletes |
| `sql/03_dql.sql` | SELECT queries, filters, sorting, and joins |
| `sql/04_views.sql` | Create and query a view |
| `sql/05_sequence_index_synonym.sql` | Sequence, index, and synonym examples |
| `sql/06_dcl.sql` | Grant/revoke examples |
| `sql/07_tcl.sql` | Commit and rollback examples |
| `docs/DATABASE_DESIGN.md` | Table relationships and design notes |

## Requirements

- Oracle Database (the original academic project used Oracle Database 10g XE)
- SQL*Plus or another Oracle SQL client
- A database user with permission to create tables, views, sequences, indexes, and synonyms

## Run

Connect to your Oracle database using SQL*Plus, then run scripts in order:

```sql
@sql/01_ddl.sql
@sql/02_dml.sql
@sql/03_dql.sql
@sql/04_views.sql
@sql/05_sequence_index_synonym.sql
```

Run `sql/06_dcl.sql` only if you have the required privileges and the target user (for example, `HR`) exists. Run `sql/07_tcl.sql` separately to experiment with transaction control. Review each script before running it: DDL statements can change database objects, and the DML/TCL examples modify data.

> **Note:** These scripts are learning examples, not a production airline booking system. Sample records are fictional. The scripts are written for Oracle SQL and may require adjustments for other database engines.

## Learning objectives

- Design relational tables and connect them with keys
- Practice SQL command categories: DDL, DML, DQL, DCL, and TCL
- Query related records using joins and views
- Explore database objects such as sequences, indexes, and synonyms

## Academic project

Created as a DBMS micro-project for the Diploma in Computer Technology, academic year 2025–2026. Team members: Manas Shinde, Yash Adak, and Aryan Advant.

## License

No license has been added yet. Until a license is selected, normal copyright applies and reuse permissions are not explicitly granted.
