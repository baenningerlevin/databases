# JOIN

Eine `JOIN` Klausel wird benutzt, um Attribute von zwei oder mehr Tabellen miteinander zu kombinieren, basierend auf der Beziehung zwischen ihnen.

## Beispiel

Folgend sehen wir eine Tabelle mit einem Fremdschlüsselattribut:

| ìd_order | fk_Customer | OrderDate  |
|----------|-------------|------------|
| 10308    | 2           | 1996-09-18 |
| 10309    | 37          | 1996-09-19 |
| 10310    | 77          | 1996-09-20 |
| ...      | ...         | ...        |

Folgend ist noch die Tabelle `tbl_Customer`:

| CustomerID | CustomerName                       | ContactName    | Country |
|------------|------------------------------------|----------------|---------|
| 1          | Alfreds Futterkiste                | Maria Anders   | Germany |
| 2          | Ana Trujillo Emparedados y helados | Ana Trujillo   | Mexico  |
| 3          | Antonio Moreno Taqueria            | Antonio Moreno | Mexico  |
| ...        | ...                                | ...            | ...     |

Jetzt können wir ein SQL Statement kreieren, dass alle Datensätze selektiert, die gleiche Werte in beiden Tabellen haben.

```SQL
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```

Dieses Statement wird Folgendes ausgeben:

| ìd_order | fk_Customer                        | OrderDate  |
|----------|------------------------------------|------------|
| 10308    | Ana Trujillo Emparedados y helados | 1996-09-18 |
| 10309    | Antonio Moreno Taqueria            | 1996-09-19 |
| 10310    | Alfreds Futterkiste                | 1996-09-20 |
| ...      | ...                                | ...        |

## Arten von JOINs

Es gibt verschiedene Arten von JOINs in SQL:

- **`INNER JOIN`**: Gibt alle Datensätze zurück, die übereinstimmende Werte in beiden Tabellen haben
- `**LEFT JOIN**`: Gibt alle Datensätze von der linken Tabelle zurück und die übereinstimmenden Datensätze von der rechten Tabelle
- `**RIGHT JOIN**`: Gibt alle Datensätze von der rechten Tabelle zurück und die übereinstimmenden Datensätze von der linken Tabelle
- `**FULL JOIN**`: Gibt alle Datensätze zurück