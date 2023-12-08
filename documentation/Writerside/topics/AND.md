# AND

Die `WHERE` Klausel kann einen oder mehrere `AND` Operatoren beinhalten. Der `AND` Operator wird benutzt, um Datensätze auf mehrere Kriterien zu
filtern. Dabei müssen alle Kriterien wahr sein, um einen Output zu erhalten.

## Syntax

```SQL
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 AND condition2 AND condition3 ...;
```

## Beispiel

```SQL
    SELECT *
    FROM Customers
    WHERE Country = 'Spain' AND CustomerName LIKE 'G%';
    -- Alle Kunden, die von Spanien sind UND mit dem Buchstaben 'G' starten.
```