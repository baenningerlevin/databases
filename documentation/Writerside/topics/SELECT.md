# SELECT

<show-structure depth="2"/>

Das `SELECT` Statement wird benutzt, um Daten aus einer Datenbank auszuwählen.

## Syntax

```SQL
    SELECT column1, column2, ... 
    FROM table_name;
```

Hier sind `column1`, `column2`, ... sind die Attributnamen in der Tabelle, von denen man die Daten auswählen will.

Das `table_name` repräsentiert den Namen der Tabelle, von welcher wir Daten auswählen möchten.

### Alle Attribute auswählen

Mit `SELECT *` kann man alle Attribute auswählen.

## Beispiele

### Bestimmte Attribute

```SQL
    SELECT CustomerName, City FROM Customers;
```

### Alle Attribute

```SQL
    SELECT * FROM Customers;
```