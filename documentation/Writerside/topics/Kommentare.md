# Kommentare

Kommentare werden benutzt, um Teile von SQL Statements zu erklären, oder um die Ausführung von SQL Statements zu verhindern.

## Einzeilige Kommentare

Einzeilige Kommentare starten mit `--`, jeglicher Text zwischen dem `--` und dem Ende der Linie wird ignoriert.

## Mehrzeilige Kommentare

Mehrzeilige Kommentare starten mit `/*` und enden mit `*/`, jeglicher Text zwischen dem `/*` und `*/` wird ignoriert.

## Beispiele

### Einzeiliger Kommentar

```SQL
    -- Select all:
    SELECT * FROM Customers;
```

### Mehrzeiliger Kommentar

```SQL
    /*Select all the columns 
    of all the records
    in the Customers table:*/ 
    SELECT * FROM Customers;
```