# BACKUP DB

<show-structure depth="2" />

Das `BACKUP DATABASE` Statement wird benutzt, um in SQL Server ein Full Backup einer existierenden DB zu erstellen.

## Syntax

### Full Backup

```SQL
    BACKUP DATABASE databasename
    TO DISK = 'filepath';
```

### Differenzielles Backup

```SQL
    BACKUP DATABASE databasename
    TO DISK = 'filepath'
    WITH DIFFERENTIAL;
```

## Beispiel

### Full Backup - Beispiel

```SQL
    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak';
```

### Differenzielles Backup - Beispiel

```SQL
    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak'
    WITH DIFFERENTIAL;
```