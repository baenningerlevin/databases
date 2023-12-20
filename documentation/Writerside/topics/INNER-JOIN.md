# INNER JOIN

Das `INNER JOIN` Keyword selektiert alle Datensätze die übereinstimmende Werte in beiden Tabellen haben.

## Syntax

```SQL
    SELECT column_name(s)
    FROM table1
    INNER JOIN table2
    ON table1.column_name = table2.column_name;
```

Dabei ist es ein bewährtes Verfahren oben noch die Tabellennamen zu spezifizieren.

### Beispiele

```SQL
    SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
    FROM Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;
```

### Drei Tabellen miteinander verknüpfen

```SQL
    SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
    FROM ((Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
```