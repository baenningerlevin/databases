# CREATE TABLE

Das `CREATE TABLE` Statement wird benutzt, um eine neue Tabelle in einer Datenbank zu erstellen.

## Syntax

```SQL
    CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
```

## Beispiel

```SQL
    CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

