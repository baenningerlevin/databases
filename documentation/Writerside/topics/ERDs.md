# ERDs

<show-structure depth="2"/>

Ein ERD ist eine grafische Darstellung einer Datenbank. ERD steht für `Entity Relationship Diagram`, dabei ist eine Entität ein Objekt bzw. in der
dritten Normalform ein Datensatz in einer Tabelle.

Dann gibt es noch die Entitätsmenge, diese steht für die Anzahl an Entitäten in einem Entitätstyp, der Tabelle.

## Was kann man mit einem ERD machen?

Man kann die Relationen zwischen zwei bzw. mehreren Entitäten aufzeigen.

![](erd_example.drawio.png) {width="350" thumbnail="true"}

## Verbindungstypen

Es gibt drei verschiedene Verbindungstypen, die wären:

- many-to-many
- one-to-many
- one-to-one

### many-to-many

Die many-to-many Verbindung wird als IEM wie folgt gezeichnet:

![](many-to-many.drawio.png)

oder

![](many-to-many_2.drawio.png)

### one-to-many

Die many-to-many Verbindung wird als IEM wie folgt gezeichnet:

![](one-to-many.drawio.png)

oder

![](one-to-many_2.drawio.png)

### one-to-one

Die many-to-many Verbindung wird als IEM wie folgt gezeichnet:

![](one-to-one.drawio.png)

oder

![](one-to-one_2.drawio.png)

## Wichtiges

Bei den many-to-many Relationen ist zu beachten, dass man eine Verbindungstabelle erstellen muss.

![](many-to-many_relation.drawio.png) { thumbnail="true" width="350" }