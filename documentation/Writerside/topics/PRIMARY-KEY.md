# PRIMARY KEY

<show-structure depth="2" />

Mit dem `PRIMARY KEY` kann man einen Datensatz in einer Tabelle eindeutig identifzieren. Primärschlüssel müssen `UNIQUE` Werte enthalten und
dürfen nicht `NULL` sein.

Eine Tabelle kann nur **einen** Primärschlüssel haben; dieser Primärschlüssel kann jedoch aus mehreren Attributen bestehen.

## Beispiele

### CREATE TABLE

#### Zufälliger Name

```SQL
    CREATE TABLE Persons (
    PersonID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
```

#### Ausgewählter Name

```SQL
    CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
    CONSTRAINT PK_Person PRIMARY KEY (id_Person)
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Persons
    ADD CONSTRAINT PK_Person PRIMARY KEY (id_Person);
```

### DROP the PRIMARY KEY

```SQL
    ALTER TABLE Persons
    DROP CONSTRAINT PK_Person;
```