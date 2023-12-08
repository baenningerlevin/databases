# Abfragen

Mit Abfragen kann man Daten filtern und manipulieren. Zudem kann man mehrere Tabellen in einer Abfrage kombinieren.

Man kann sie ganz einfach unter <ui-path>Erstellen | Abfrageentwurf</ui-path> erstellen. Danach kommt man in eine Ansicht, wo man rechts Tabellen
per Drag-and-Drop auswählen kann.

> Relationen werden automatisch übernommen

{ style="tip" }

Unten kann man dann auswählen, welche Attribute man in der Abfrage einbeziehen möchte.

Man kann auch mehrere Attribute zusammennehmen:

```SQL
Voller Name: tbl_Lehrperson.[Vorname] & " " & [Nachname]
```

Hier erstellen wir ein neues Attribut `Voller Name` mit den Attributwerten Vorname und Nachname der Tabelle `Lehrperson`.

![](queries.png) { width="500" thumbnail="true" }

Im obigen Bild kann man die Abschnitte noch einmal gut erkennen. Wie man sieht, kann man unten auch noch entscheiden, ob ein Attribut angezeigt
werden soll oder nicht, wie es sortiert werden soll, Kriterien, etc.

Diese Abfrage sieht dann wie folgt aus:

![query_ergebnis.png](query_ergebnis.png) { width="250" thumbnail="true" }

> Tabellen haben immer folgendes Namensschema: `qry_Name`
>
{ style="note"}

## Abfragen bei Fremdschlüsseln einbinden

Um die Benutzerfreundlichkeit bei Eingaben mit Fremdschlüsseln zu verbessern, können wir Abfragen verwenden.

<procedure title="Abfrage einbinden" id="abfrage_einbinden">
    <step>Tabelle mit gewünschtem Fremdschlüssel öffnen</step>
    <step>In die Entwurfsansicht gehen</step>
    <step>Attribut mit Fremdschlüssel auswählen</step>
    <step>Unten in den Reiter <ui-path>Nachschlagen</ui-path> gehen</step>
    <step>Bei <ui-path>Datensatzherkunft</ui-path> den erstellten Query auswählen</step>
    <step>Die <ui-path>Spaltenanzahl</ui-path> auf den Query anpassen</step>
    <step>Die <ui-path>Spaltenbreiten</ui-path> anpassen</step>
    <step>Die <ui-path>Listenbreite</ui-path> ist der Summenwert aller <ui-path>Spaltenbreiten</ui-path></step>
</procedure>

Nun sollten im Dropdown keine Zahlen mehr angezeigt werden, sondern die Ergebnisse der Abfrage.

![queries_einbinden.png](queries_einbinden.png) { width="250" thumbnail="true" }