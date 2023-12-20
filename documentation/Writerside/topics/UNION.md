# UNION

Der `UNION` Operator wird benutzt, um die Resultate von zwei oder mehr `SELECT` Statements zu kopieren. Dabei ist folgendes zu beachten:

- Jedes `SELECT` in `UNION` muss dieselbe Anzahl Spalten haben.
- Zudem müssen sie vom gleichen Datentypen sein.
- Die Spalten müssen in derselben Reihenfolge sein.

## Syntax

```SQL
    SELECT column_name(s) FROM table1
    UNION
    SELECT column_name(s) FROM table2;
``` 

### UNION ALL

Standardmässig selektiert der `UNION` Operator nur einzigartige Werte. Um Duplikate zu erlauben, verwendet man den `UNION ALL` Operator:

```SQL
    SELECT column_name(s) FROM table1
    UNION ALL
    SELECT column_name(s) FROM table2;
```

## Beispiele

## UNION - Beispiel

```SQL
    SELECT City FROM Customers
    UNION
    SELECT City FROM Suppliers
    ORDER BY City;
```