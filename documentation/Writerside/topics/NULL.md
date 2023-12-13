# NULL

<show-structure depth="2" />

Ein Feld mit einem `NULL`-Wert ist ein Feld ohne Wert.

Wenn ein Feld in einer Tabelle optional ist, ist es möglich einen neuen Datensatz zu erstellen oder zu aktualisieren, ohne einen Wert in das Feld
hinzuzufügen.

> Ein `NULL`-Wert ist weder ein Feld mit der Zahl 0 noch ein Feld das Spaces enthält.

## Nach `NULL` testen

Um nach `NULL`-Werten zu testen, müssen wir die beiden Operatoren `IS NULL` und `IS NOT NULL` verwenden.

### `IS NULL` Syntax

```SQL
    SELECT column_names
    FROM table_name
    WHERE column_name IS NULL;
```

### `IS NOT NULL` Syntax

```SQL
    SELECT column_names
    FROM table_name
    WHERE column_name IS NOT NULL;
```

## Beispiele

### IS NULL

```SQL
    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NULL;
```

### IS NOT NULL

```SQL
    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NOT NULL;
```