# INSERT INTO

<show-structure depth="2" />

Das `INSERT INTO` Statement wird benutzt, um neue Datensätze in eine Tabelle einzufügen.

## Syntax

Es gibt zwei Möglichkeiten das `INSERT INTO` Statement zu schreiben.

### Bei bestimmten Spalten Werte einfügen

Hier spezifiziert man sowohl die Spalten, als auch die Werte die eingefügt werden sollen.

```SQL
    INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);
```

### Für alle Spalten Werte einfügen

Wenn man Werte für alle Spalten in der Tabelle einfügt, muss man das nicht im Query spezifizieren. Jedoch muss man die Reihenfolge der Werte bzw.
der Spalten beachten.

```SQL
    INSERT INTO table_name
    VALUES (value1, value2, value3, ...);
```

## Beispiele

### Alle Werte einfügen

```SQL
    INSERT INTO Customers 
    VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```

> Für die `CustomerID` müssen wir nie einen Wert angeben, da der Primary Key ein auto-increment Feld ist.

### Bestimmte Werte einfügen

```SQL
    INSERT INTO Customers (CustomerName, City, Country)
    VALUES ('Cardinal', 'Stavanger', 'Norway');
```

> Die Informationen, die wir nicht eingefügt haben, werden den Wert [`NULL`](NULL.md) haben

### Mehrere Datensätze einfügen

```SQL
    INSERT INTO Customers
    VALUES
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
    ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
    ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
```

> Die einzelnen Datensätze werden mit einem `,` abgetrennt