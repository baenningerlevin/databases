# FOREIGN KEY

<show-structure depth="2" />

Das `FOREIGN KEY` Constraint wird benutzt, um Aktionen zu verhindern, die ansonsten Relationen zwischen Tabellen zerstören würden.

Ein `FOREIGN KEY` ist ein Feld in einer Tabelle, das zu einem `PRIMARY KEY` in einer anderen Tabelle referenziert.

## Beispiele

### CREATE TABLE

#### Zufälliger Name

```SQL
    CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);
```

#### Ausgewählter Name

```SQL
    CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    CONSTRAINT PK_OrderID PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
```

### ALTER TABLE

```SQL
    ALTER TABLE Orders
    ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
```

### DROP the FOREIGN KEY

```SQL
    ALTER TABLE Orders
    DROP CONSTRAINT FK_PersonOrder;
```