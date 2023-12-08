# Formulare

<show-structure depth="2"/>

Formulare sind ein benutzerfreundlicher Weg neue Daten zu erfassen. Formulare kann man über <ui-path>Erstellen | Formularentwurf</ui-path> oder über
<ui-path>Erstellen | Formularassistent</ui-path> erstellen. Wenn man von Grund auf ein Formular aufbauen möchte benutzt man ersteres, wenn man schnell
ein Formular haben möchte zweiteres.

> Formulare haben immer folgendes Namensschema: `frm_Name`
>
{ style="note" }

## Formularassistent

Über den Formularassistenten können wir ganz einfach das Grundgerüst eines Formulars erstellen.

<procedure title="Formularassistent" id="formularassistent_procedure">
    <step>Tabelle auswählen</step>
    <step>Felder auswählen</step>
    <step>Layout auswählen</step>
    <step>Formularnamen angeben</step>
</procedure>

Danach können wir wie beim Formularentwurf unser Formular noch weiter individuell anpassen.

Ein fertiges einfaches Formular könnte in etwa so aussehen:

![form_finished_2.png](form_finished_2.png) { width="350" thumbnail="true" }

## Formularentwurf

Ein leeres Formular sieht folgendermassen aus:

![forms_empty.png](forms_empty.png) { width="250" thumbnail="true" }

Im Menüband unter dem Reiter <ui-path>Formularentwurf</ui-path> kann man nun per Drag-and-Drop einzelne Komponenten hinzufügen. Zudem kann man
eine Kopf- bzw. Fusszeile für das Datum, Logo, etc. einfügen. Des Weiteren kann man noch die Aktivierreihenfolge bestimmen.

![](forms_options.png) { width="350" thumbnail="true" }

### Schaltfläche

Mit einer Schaltfläche kann man bestimmte Aktionen auf Knopfdruck ausführen. Dafür gibt es einen Wizard, wo man einige vorgefertigte Buttons
finden kann. Beispielsweise um das Formular zu speichern, einen Datensatz zu löschen etc.

![schaltflaeche.png](schaltflaeche.png) { width="300" thumbnail="true" }

Man kann aber auch einen eigenen Button machen, dafür macht man Folgendes:

<procedure title="Button erstellen" id="button_erstellen">
    <step>Schaltfläche erstellen</step>
    <step>Wizard abbrechen</step>
    <step>Im Eigenschaftenblatt in den Reiter <ui-path>Ereignis</ui-path> gehen.</step>
    <step>Dort auf die drei Punkte bei <ui-path>Beim Klicken</ui-path> gehen.</step>
    <step>Dort kann man dann eine Makro erstellen oder Code in Visual Basic schreiben.</step>
</procedure>

### Kombinationsfeld

Mit einem Kombinationsfeld kann man Daten aus einer Tabelle oder Abfrage auswählen. Ein Kombinationsfeld kann man beispielsweise benutzen, um
Formulare miteinander zu verknüpfen.

![kombinationsfeld.png](kombinationsfeld.png) { width="200" thumbnail="true" }

## Formulare miteinander verknüpfen

Wenn wir Formulare miteinander verknüpfen wollen, benutzen wir ein Unterformular oder einen Query.

### Unterformulare

<procedure title="Formulare mit Unterformular" id="">
    <step>Neues Formular in der Entwurfsansicht öffnen</step>
    <step>Kombinationsfeld hinzufügen mit dem Inhalt, nach welchem wir filtern wollen, beispielsweise Klasse bei einem Klassenspiegel. 
     Kombinationsfeld sinnvollen Namen unter dem Reiter <ui-path>Andere</ui-path> auswählen</step>
    <step>Query erstellen mit den Daten, die wir eintragen wollen, beispielsweise voller Name</step>
    <step>Aus diesem Query ein Formular erstellen</step>
    <step>Das erstellte Formular per Drag-and-Drop in das andere Formular ziehen</step>
    <step>Unterformular so auswählen, dass der orange Rand zu sehen ist</step>
    <step>Auf den Reiter <ui-path>Daten</ui-path> gehen</step>
    <step>Bei <ui-path>Verknüpfen nach</ui-path> den Namen des Kombinationsfelds auswählen und bei <ui-path>Verknüpfen von</ui-path> das Feld, 
     welches zu verknüpfen ist auswählen</step>
</procedure>

### Query

<procedure title="Formulare mit Query erstellen" id="formulare_mit_query_erstellen">
    <step>Zuerst erstellen wir ein neues Formular aus einem Query, der alle Daten beinhaltet, die wir eintragen wollen, jedoch noch ohne das 
Filter-Feld.</step>
    <step></step>
</procedure>

## Weitere Eigenschaften

### Standardansicht

Mit der Standardansicht kann man auswählen, ob ein Formular fortlaufend ist, oder ob man sich durchklicken muss.

### Datensatzmarkierer

Der Datensatzmarkierer ist der schwarze Kasten Links von einem Formular. Diesen kann man mit der Eigenschaft <ui-path>Datensatzmarkierer</ui-path>
deaktivieren.

### Navigationsschaltflächen

Diese Eigenschaft beschreibt den schwarzen Kasten unten bei einem Formular. Diesen kann man über die Eigenschaft `Navigationsschaltflächen`
deaktivieren.

### Trennlinien

Bei einem Endlosformular kann man optional noch Trennlinien hinzufügen.

### PopUp

Mit dieser Eigenschaft kann man ein PopUp mit einem Formular erstellen. Das ist praktisch für Übersichten.