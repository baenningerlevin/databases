# NOT NULL

<show-structure depth="2" />

Standardmässig kann ein Attribut `NULL`-Werte haben. Das `NOT-NULL` Constraint wirkt dagegen und es muss ein Wert der nicht `NULL` ist,
eingetragen werden.

## Beispiele

### CREATE TABLE

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Persons
    ALTER COLUMN Age int NOT NULL;
```