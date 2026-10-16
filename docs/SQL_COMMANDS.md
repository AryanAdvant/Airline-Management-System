# SQL Command Guide

| Category | Purpose | Project script / examples |
| --- | --- | --- |
| DDL | Define database objects | `01_ddl.sql`: `CREATE TABLE`, constraints |
| DML | Insert or change rows | `02_dml.sql`: `INSERT`, `UPDATE`, `DELETE` |
| DQL | Retrieve data | `03_dql.sql`: `SELECT`, joins, aggregation |
| DCL | Manage object privileges | `06_dcl.sql`: `GRANT`, `REVOKE` |
| TCL | Manage transactions | `07_tcl.sql`: `COMMIT`, `ROLLBACK` |

Other Oracle objects are demonstrated in `04_views.sql` and `05_sequence_index_synonym.sql`.

## Execution order

1. Create schema with `01_ddl.sql`.
2. Insert sample rows with `02_dml.sql`.
3. Explore queries with `03_dql.sql`.
4. Create and query the view with `04_views.sql`.
5. Create the sequence, index, and synonym with `05_sequence_index_synonym.sql`.
6. Run DCL examples only with suitable privileges.
7. Run TCL examples separately to observe commit/rollback behavior.
