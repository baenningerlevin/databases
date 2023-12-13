# PRIMARY KEY

Mit dem `PRIMARY KEY` kann man einen Datensatz in einer Tabelle eindeutig identifzieren. Primärschlüssel müssen `UNIQUE` Werte enthalten und
dürfen nicht `NULL` sein.

Eine Tabelle kann nur **einen** Primärschlüssel haben; dieser Primärschlüssel kann jedoch aus mehreren Attributen bestehen.

## Syntax

```SQL
    CREATE TABLE tbl_name (
    id_attribute_name int NOT NULL PRIMARY KEY,
    attribute_name [datatype] [constraints],
    attribute_name [datatype] [constraints],
    ...
);
```

Um die Benennung eines `PRIMARY KEY`-Constraints zu ermöglichen und um einen `PRIMARY KEY`-Constraint für mehrere Spalten zu definieren, verwendet man
die folgende SQL-Syntax:

```SQL
    CREATE TABLE Persons (
    id_attribute_name int NOT NULL,
    attribute_name [datatype] [constraints],
    attribute_name [datatype] [constraints],
    ...
    CONSTRAINT pk_person PRIMARY KEY (id_attribute_name, attribute_name)
);
```

## Beispiele

```SQL
    CREATE TABLE tbl_Persons (
    id_Person int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
```

```SQL
    CREATE TABLE tbl_Persons (
    id_Person int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT pk_Person PRIMARY KEY (ID,LastName)
);
```