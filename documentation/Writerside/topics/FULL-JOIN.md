# FULL JOIN

Das `FULL OUTER JOIN` Keyword gibt alle Datensätze von der linken, als auch von der rechten Tabelle aus.

## Syntax

```SQL
    SELECT column_name(s)
    FROM table1
    FULL OUTER JOIN table2
    ON table1.column_name = table2.column_name
    WHERE condition;
```

## Beispiel

```SQL
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
    ORDER BY Customers.CustomerName;
```