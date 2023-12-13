# CHECK

<show-structure depth="2" />

Der `CHECK` Constraint wird benutzt, um den Wertebereich zu limitieren.

## Beispiele

### CREATE TABLE

#### Zufälliger Name

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);
```

#### Ausgewählter Name

```SQL
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Persons
    ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');
```

### DROP the CHECK

```SQL
    ALTER TABLE Persons
    DROP CONSTRAINT CHK_PersonAge;
```