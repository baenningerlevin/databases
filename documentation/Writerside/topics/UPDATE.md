# UPDATE

<show-structure depth="2" />

Das `UPDATE` Statement wird benutzt, um existierende Datensätze in einer Tabelle zu modifizieren.

## Syntax

```SQL
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;
```

> Man sollte vorsichtig sein, wenn man Datensätze in einer Tabelle aktualisiert!
>
> Beachte die `WHERE`-Klausel in der UPDATE-Anweisung. Die `WHERE`-Klausel gibt an, welche(r) Datensatz(e) aktualisiert werden soll(en). Wenn man
> die WHERE-Klausel weglässt, werden alle Datensätze in der Tabelle aktualisiert!

{ style="warning" }

## Beispiel

### Einen Datensatz aktualisieren

```SQL
    UPDATE Customers
    SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
    WHERE CustomerID = 1;
```