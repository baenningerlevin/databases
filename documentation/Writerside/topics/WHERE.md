# WHERE

<show-structure depth="2" />

Die `Where` Klausel wir benutzt, um Datensätze zu filtern. Es wird benutzt, um nur die Datensätze zu extrahieren, die eine spezifische Kondition
erfüllen.

## Syntax

```SQL
    SELECT column1, column2, ... 
    FROM table_name
    WHERE condition;
```

> Die `WHERE` Klausel wird nicht nur mit `SELECT` statements benutzt. Es wird auch für `UPDATE`, `DELETE`, etc. benutzt.

### Text und numerische Felder

SQL fordert bei Text ein einfaches Anführungszeichen `''`, jedoch braucht es bei numerischen Feldern keine Anführungszeichen.

### Operatoren bei der `WHERE` Klausel

| Operator  | Beschreibung                                        |
|-----------|-----------------------------------------------------|
| `=`       | Gleich                                              |
| `>`       | Grösser als                                         |
| `<`       | Kleiner als                                         |
| `>=`      | Grösser oder gleich                                 |
| `<=`      | Kleiner oder gleich                                 |
| `<>`      | Nicht gleich                                        |
| `BETWEEN` | Zwischen einem bestimmten Bereich                   |
| `LIKE`    | Nach einem bestimmten Muster suchen (RegEx)         |
| `IN`      | Um mehrere mögliche Werte für eine Spalte anzugeben |

## Beispiele

### Vergleich mit Text

```SQL
    SELECT * FROM Customers
    WHERE Country = 'Mexico';
    -- Alle Kunden von Mexiko
```

### Vergleich mit numerischen Werten

```SQL
    SELECT * FROM Customers
    WHERE CustomerID > 80;
    -- Alle Kunden, bei denen die ID grösser als 80 ist
```

### Vergleich mit RegEx

```SQL
    SELECT * FROM Customers
    WHERE Countre LIKE 'a%';
    -- Alle Kunde die von Ländern kommen, die mit 'a' anfangen
```