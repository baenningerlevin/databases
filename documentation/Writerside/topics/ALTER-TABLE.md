# ALTER TABLE

Das `ALTER TABLE` Statement wird benutzt, um Attribute hinzuzufügen, zu löschen und zu ändern. Auch kann man Constraints hinzufügen oder löschen,
mehr dazu unter [Contraints und Keys](Beschraenkungen-und-Keys.md).

## Syntax

### Attribut hinzufügen

```SQL
    ALTER TABLE table_name
    ADD column_name datatype;
```

### Attribut löschen

```SQL
    ALTER TABLE table_name
    DROP COLUMN column_name;
```

### Attribut umbenennen

```SQL
    ALTER TABLE table_name
    RENAME COLUMN old_name to new_name;
```

### Attribut ändern

```SQL
    ALTER TABLE table_name
    ALTER COLUMN column_name datatype;
```