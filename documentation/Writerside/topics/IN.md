# IN

<show-structure depth="2" />

Der `IN` Operator erlaubt es einem mehrere Werte in einer `WHERE` Klausel zu spezifizieren. Eigentlich ist `IN` die kurze Version von mehreren
`OR` Konditionen.

## Syntax

```SQL
    SELECT column_name(s)
    FROM table_name
    WHERE column_name IN (value1, value2, ...);
```

### IN (SELECT)

Man kann `IN` auch mit einem Subquery in der `WHERE` Klausel nutzen. Mit einem Subquery kann man alle Datensätze aus dem Hauptquery zurückgeben,
die im Ergebnis des Subquerys vorhanden sind.

## Beispiel

### IN - Beispiel

```SQL
    SELECT * FROM Customers
    WHERE Country IN ('Germany', 'France', 'UK');
```

### IN (SELECT) - Beispiel

```SQL
    SELECT * FROM Customers
    WHERE CustomerID IN (SELECT CustomerID FROM Orders);    
```
