# UNIQUE

<show-structure depth="2" />

Das `UNIQUE` Constraint versichert einem, dass alle Werte in einer Spalte verschieden sind.

## Beispiele

### CREATE TABLE

#### Zufälliger Name

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
```

#### Ausgewählter Name

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UQ_Person UNIQUE (ID,LastName)
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Persons
    ADD CONSTRAINT UQ_Person UNIQUE (ID,LastName);
```

### DROP the CONSTRAINT

```SQL
    ALTER TABLE Persons
    DROP CONSTRAINT UQ_Person;
```