# BETWEEN

<show-structure depth="2" />

Der `BETWEEN` Operator wählt alle Werte in einem bestimmten Bereich aus. Die Werte können Zahle, Texte oder Daten sein.

> Der `BETWEEN` Operator ist inklusiv, Start- und Endwerte sind inkludiert

## Syntax

```SQL
    SELECT column_name(s)
    FROM table_name
    WHERE column_name BETWEEN value1 AND value2;
```

## Beispiele

### Mit numerischen Werten

```SQL
    SELECT * FROM Products
    WHERE Price BETWEEN 10 AND 20;
    -- Alle Produkte mit einem Preis zwischen 10 und 20
```

### Mit Text

```SQL
    SELECT * FROM Products
    WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
    ORDER BY ProductName;
    -- Alle Produkte, wo der Produktname alphabetisch zwischen den beiden Werten ist
```

### Mit Daten

```SQL
    SELECT * FROM Orders
    WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
    -- Alle Bestellungen, wo das Bestelldatum zwischen den zwei Daten ist
```