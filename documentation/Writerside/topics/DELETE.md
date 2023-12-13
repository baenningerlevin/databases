# DELETE

<show-structure depth="2" />

Das `DELETE` Statement wird benutzt um existierende Datensätze in einer Tabelle zu löschen.

## Syntax

```SQL
    DELETE FROM table_name WHERE condition;
```

> Man sollte vorsichtig sein, wenn man Datensätze in einer Tabelle löscht!
>
> Beachte die `WHERE`-Klausel in der DELETE-Anweisung. Die `WHERE`-Klausel gibt an, welche(r) Datensatz(e) gelöscht werden soll(en). Wenn man
> die WHERE-Klausel weglässt, werden alle Datensätze in der Tabelle gelöscht!

{ style="warning" }

### Alle Datensätze löschen

Es ist möglich alle Datensätze zu löschen, ohne die Tabelle selbst zu löschen.

```SQL
    DELETE FROM table_name;
```

## Beispiele

### Einzelne Datensätze löschen - Beispiel

```SQL
    DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
```

### Alle Datensätze löschen - Beispiel

```SQL
    DELETE FROM Customers;
```