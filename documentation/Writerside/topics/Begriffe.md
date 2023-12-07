# Die wichtigsten Begriffe

<show-structure depth="2" />

## Datenbank

Eine Datenbank ist eine organisierte Sammlung von strukturierten Informationen oder Daten, die typischerweise elektronisch in einem Computersystem
gespeichert sind. Sie wird normalerweise von einem Datenbankverwaltungssystem (DBMS) gesteuert.

Daten innerhalb der gängigsten Arten von heutigen Datenbanken werden typischerweise in Zeilen und Spalten in einer Reihe von Tabellen modelliert,
um die Verarbeitung und Datenabfrage effizient zu gestalten.

Die meisten Datenbanken verwenden die Structured Query Language (SQL) zum Schreiben und Abfragen von Daten. Datenbanken zeichnen sich durch die Art
der gespeicherten Daten, die Methode für den Datenzugriff oder die Art der Datenspeicherung aus. Beispiele sind relationale, hierarchische,
objektorientierte und objektrelationale Datenbanken.

## Begriffe einer Datenbank

### Tabelle

Eine Tabelle ist eine strukturierte Sammlung von Daten, die in Zeilen und Spalten organisiert ist.

![](table.png) { width="350" thumbnail="true" }

### Datensatz

Ein Datensatz ist die Zeile einer Tabelle, also ein Eintrag in der Tabelle. Das heisst in der Tabelle **Kunden** ein _Kunde_.

![](record.png) { width="350" thumbnail="true" }

### Attribut

Im Datenbankkontext bezieht sich ein Attribut auf eine benannte Spalte in einer Tabelle, die einen bestimmten Datentyp und andere Eigenschaften hat.
Attribute repräsentieren die verschiedenen Merkmale oder Eigenschaften, die in einer Datenbanktabelle gespeichert werden. Sie sind die grundlegenden
Bausteine, aus denen Datensätze in einer Tabelle aufgebaut sind.

In einem relationalen Datenbanksystem entspricht ein Attribut einer Spalte in einer Tabelle, die einen bestimmten Datentyp und andere Einschränkungen
hat.

![](column.png) { width="350" thumbnail="true" }

### Feld

Ein Feld ist eine einzelne Datenposition innerhalb einer Tabelle. Das heisst eine Zelle ist der Schnittpunkt von Datensatz und Attribut.

![](cell.png) { width="350" thumbnail="true" }

### Primär- / Fremdschlüssel

Ein Primärschlüssel ist ein eindeutiger Bezeichner in einer Tabelle. Er dient zur Identifizierung eines Datensatzes. Wichtig ist dabei, dass er
**nie geändert** wird und dass es **keinen doppelten PK** gibt.

Ein Fremdschlüssel verweist auf einen Primärschlüssel in einer anderen Tabelle. Somit verbindet er also Tabellen miteinander. Wichtig dabei ist, dass
der Wert des FKs gleichwertig ist, mit dem des PKs.

![](pk_fk.jpg) { width="350" thumbnail="true" }

### Query

Mit einem Query kann man in Tabellen aufrufen, filtern, sortieren oder sogar manipulieren. In einer relationalen Datenbank geschieht das meistens
über SQL Code.

Dafür gibt es bestimmte Operatoren in SQL:

- `SELECT`: Abrufen von Daten aus einer oder mehreren Tabellen basierend auf bestimmten Kriterien
- `INSERT`: Einfügen neuer Datensätze in eine Tabelle
- `UPDATE`: Aktualisieren von vorhandenen Datensätzen in einer Tabelle
- `DELETE`: Löschen von Datensätzen aus einer Tabelle
- `JOIN`: Verknüpfen von Daten aus mehreren Tabellen basierend auf gemeinsamen Spaltenwerten
- `GROUP BY`: Gruppieren von Daten basierend auf bestimmten Spaltenwerten
- `ORDER BY`: Sortieren von Daten basierend auf bestimmten Spaltenwerten

### Report

Ein Report ist ein Bericht, mit dem man eine Auswertung machen kann über die Datenbank. Ein Bericht setzt sich aus Informationen aus relationalen
Datenbanken zusammen.

Ein Bericht ist vergleichbar mit einem Log. Ein Beispiel dafür wäre ein Bericht über Kundenbestellungen.

Es wird mit SQL erstellt.

## Andere Begriffe

### Nachricht

Im Kontext von Datenbanken bezieht sich der Begriff "Nachrichten" nicht auf einzelne Nachrichten im herkömmlichen Sinne, sondern sie sind
eine Botschaft über Zustände und Ereignisse.

### Informationen

Informationen in einer Datenbank sind zweckbezogene, nützliche Nachrichten mit Neuigkeitswert für den Empfänger.

### Redundanz

In Bezug auf Datenbanken bezieht sich Redundanz auf die Speicherung derselben Daten in mehreren Tabellen oder Datensätzen. Redundanzen können zu
Inkonsistenzen und unnötigem Speicherverbrauch führen.

### Wissen

Im Datenbankkontext bezieht sich Wissen auf die Informationen, die in der Datenbank gespeichert sind und auf die durch Datenanalyse und -verarbeitung
gewonnenen Erkenntnisse.

### Daten

Daten in einer Datenbank sind die Rohdaten, die in strukturierter Form gespeichert und verwaltet werden.