# NOT

<show-structure depth="2" />

Der `NOT` Operator wird in Kombination mit anderen Operatoren gebraucht, um das **umgekehrte** Resultat zu erhalten, auch **'Negativresultat'**
genannt.

## Syntax

```SQL
    SELECT column1, column2, ...
    FROM table_name
    WHERE NOT condition;
```

## Beispiele

### NOT Equal

```SQL
    SELECT * FROM Customers
    WHERE NOT Country = 'Spain';
    -- Alle Kunden, die NICHT von Spanien sind
```

### NOT LIKE

```SQL
    SELECT * FROM Customers
    WHERE CustomerName NOT LIKE 'A%';
    -- Kunden, die NICHT mit 'A' starten
```

### NOT BETWEEN

```SQL
    SELECT * FROM Customers
    WHERE CustomerID NOT BETWEEN 10 AND 60;
    -- Alle Kunden mit Kundennummern die NICHT zwischen 10 und 60 sind
```

### NOT IN

```SQL
    SELECT * FROM Customers
    WHERE City NOT IN ('Paris', 'London');
    -- Alle Kunden NICHT von Paris oder London sind
```

### NOT greater than

```SQL
    SELECT * FROM Customers
    WHERE NOT CustomerID > 50;
    -- Alle Kunden mit Kundennummern NICHT grösser als 50
```

> Der `not-greater-than` Operator `!>` würde das gleiche Resultat geben

### NOT less than

```SQL
    SELECT * FROM Customers
    WHERE NOT CustomerID < 50;
    -- Alle Kunden mit Kundennummern NICHT kleiner als 50
```

> Der `not-less-than` Operator `!<` würde das gleiche Resultat geben