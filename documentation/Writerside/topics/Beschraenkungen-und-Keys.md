# Constraints und Keys

Constraints werden benutzt, um regeln für Daten in einer Tabelle festzulegen.

Constraints werden benutzt, um die Typen von Daten die man in eine Tabelle einfügen kann einzuschränken. Das versichert die Zuverlässigkeit und
Konsistenz der Daten. Wenn es einen Konflikt gibt, wird die Aktion abgebrochen.

## Constraints erstellen

Constraints können beim Erstellen der Tabelle mit dem `CREATE TABLE` Statement oder nachdem die Tabelle erstellt wurde mit dem `ALTER TABLE`
Statement.

### Syntax

```SQL
    CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
    );
```

```SQL
    ALTER TABLE table_name
    ADD CONSTRAINT [name] [constraint] [attribute]
```