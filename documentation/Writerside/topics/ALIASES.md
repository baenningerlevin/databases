# Aliase

<show-structure depth="2" />

SQL Aliase werden benutzt, um Tabellen oder Attributen temporäre Namen zu vergeben. Sie werden oft benutzt, um Attributnamen lesbarer zu machen.

Sie existieren nur für die Dauer des Queries.

Ein Alias wird mit dem `AS` Keyword erstellt.

## Syntax

### Attribut

```SQL
    SELECT column_name AS alias_name
    FROM table_name;
```

### Tabelle

```SQL
    SELECT column_name(s)
    FROM table_name AS alias_name;
```

### Aliase mit Spaces

<tabs>
    <tab title="Mit Square Brackets">
        <code-block lang="sql">
            SELECT column_name(s) AS [Alias with Spaces]
            FROM table_name;
        </code-block>
    </tab>
    <tab title="Mit doppelten Anfuehrungszeichen">
        <code-block lang="sql">
            SELECT column_name(s) AS "Alias with Spaces"
            FROM table_name;
        </code-block>
    </tab>
</tabs>

### Attribute konkatenieren

```SQL
    SELECT column_name(s), column_name + ', ' + column_name + ' ' + column_name + ', ' + column_name AS Alias
    FROM table_name;
```

## Beispiele

### Attribute - Beispiel

```SQL
    SELECT CustomerID AS ID, CustomerName AS Customer
    FROM Customers;
```

### Tabelle - Beispiel

```SQL
    SELECT o.OrderID, o.OrderDate, c.CustomerName
    FROM Customers AS c, Orders AS o
```

### Attribut konkateniert

```SQL
    SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
    FROM Customers;
```