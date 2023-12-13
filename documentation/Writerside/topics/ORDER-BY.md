# ORDER BY

<show-structure depth="2" />

Das `ORDER BY` Keyword wird benutzt, um das Resultat in aufsteigender oder absteigender Reihenfolge zu sortieren.

## Syntax

```SQL
    SELECT column1, column2, ...
    FROM tbl_name
    ORDER BY column1, column2, ... ASC | DESC;
```

### `ASC` bzw. `DESC`

Das `ORDER BY` Keyword sortiert standardmässig die Datensätze in aufsteigender Reihenfolge. Um die Datensätze in absteigender Reihenfolge zu
sortieren, benutzt man das `DESC` Keyword.

### Alphabetisch sortieren

Bei Strings sortiert `ORDER BY` automatisch alphabetisch, entweder in aufsteigender (A-Z) oder absteigender Reihenfolge (Z-A).

### `ORDER BY` mit mehreren Spalten

Man kann auch nach mehreren Spalten sortieren. Das heisst, es sortiert zuerst nach dem ersten Kriterium. Falls es beim ersten Kriterium Datensätze
gibt, die das Gleiche beinhalten, wird nach dem zweiten Kriterium sortiert, usw.

Darüber hinaus kann man noch bei jedem Kriterium angeben, ob es aufsteigend oder absteigend sortiert werden soll.

## Beispiele

### Numerische Sortierung

#### Aufsteigend

```SQL
    SELECT * FROM Products
    ORDER BY Price;
```

#### Absteigend

```SQL
    SELECT * FROM Products
    ORDER BY Price DESC;
```

### Sortierung mit Text

```SQL
    SELECT * FROM Products
    ORDER BY ProductName;
```

### Sortierung mit mehreren Spalten

```SQL
    SELECT * FROM Products
    ORDER BY Country ASC, CustomerName DESC;
```