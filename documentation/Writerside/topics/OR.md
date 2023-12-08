# OR

Die `WHERE` Klausel kann einen oder mehrere `OR` Operatoren beinhalten. Der `OR` Operator wird benutzt, um Datensätze auf mehrere Kriterien zu
filtern. Dabei muss mindestens ein Kriterium wahr sein, um einen Output zu erhalten.

## Syntax

```SQL
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 OR condition2 OR condition3 ...;
```

## Beispiel

```SQL
    SELECT *
    FROM Customers
    WHERE Country = 'Germany' OR Country = 'Spain';
    -- Alle Kunden von Deutschland ODER von Spanien
```