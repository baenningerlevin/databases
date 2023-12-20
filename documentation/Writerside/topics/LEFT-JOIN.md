# LEFT JOIN

`LEFT JOIN` gibt alle Datensätze von der linken Tabelle zurück und die übereinstimmenden Datensätze von der rechten Tabelle

## Syntax

```SQL
    SELECT column_name(s)
    FROM table1
    LEFT JOIN table2
    ON table1.column_name = table2.column_name;
```

## Beispiel

```SQL
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    ORDER BY Customers.CustomerName;
```