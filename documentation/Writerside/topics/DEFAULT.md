# DEFAULT

<show-structure depth="2" />

Der `DEFAULT` Constraint wird benutzt, um einen Standardwert für eine Spalte zu setzen.

## Beispiele

### CREATE TABLE

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Persons
    ADD CONSTRAINT DF_City
    DEFAULT 'Sandnes' FOR City;
```

### DROP the DEFAULT

```SQL
    ALTER TABLE Persons
    ALTER COLUMN City DROP DEFAULT;
```