# Relationen

Die Relationen kann man unter <ui-path>Datenbanktools | Beziehungen</ui-path> finden. Die Ansicht sieht folgendermassen aus:

![](relationen.png) { width="350" thumbnail="true" }

Hier findet man also alle Tabellen und deren Relationen zueinander. Durch einen Rechtsklick kann man noch weitere Optionen aufrufen:

![relation_edit.png](relation_edit.png) { width="350" thumbnail="true" }

> Oft können Relationsfehler mit dem Verknüpfungstypen (siehe oben) behoben werden (vor allem bei Abfragen).

## Relationen in Tabellen

Wenn wir nun Relationen zwischen einzelnen Tabellen herstellen wollen, können wir das Manuell über das Menü, siehe oben, oder über einen
speziellen 'Datentypen' machen.

Dafür machen wir Folgendes:

<procedure title="Relationen zwischen Tabellen herstellen">
    <step>Gewünschte Tabelle in der Entwurfsansicht öffnen</step>
    <step>Neues Attribut mit dem Präfix <code>fk_</code> erstellen</step>
    <step>Datentyp <code>Nachschlage-Assistent...</code> auswählen</step>
    <step>Durch den Wizard klicken: 
        <list>
            <li>Tabelle auswählen</li>
            <li>Attribute (meistens alle) auswählen</li>
            <li>Sortierreihenfolge bestimmen</li>
            <li>Schlüsselspalte ausblenden aktivieren</li>
            <li>Datenintegrität aktivieren (Löschbeschränkung)</li>
        </list>
    </step>
    <step>Fertigstellen</step>
</procedure>

Nun solltest du Werte von einer anderen Tabelle auswählen können. Jedoch sieht das ganze noch ein wenig kryptisch aus, das können wir jedoch mit
[Abfragen](Abfragen.md) beheben.