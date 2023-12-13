# UNIQUE

Das `UNIQUE` Constraint versichert einem, dass alle Werte in einer Spalte verschieden sind.

## Beispiele

### CREATE TABLE

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
```