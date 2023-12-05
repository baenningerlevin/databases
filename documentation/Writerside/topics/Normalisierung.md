# Normalisierung

Die Normalisierung hat den Sinn, Anomalien und Redundanzen zu verhindern. Dabei müssen ein paar wenige Schritte und Regeln beachtet werden.

## Nullte Normalform

Bei einer Datenbank in der nullten Normalform befinden sich alle Daten unnormalisiert in **einer einzigen** Tabelle.

Unsere Ausgangstabelle ist folgende:

| Name               | Abteilung, Bezeichnung | Noten                        |
|--------------------|------------------------|------------------------------|
| Pascal, Bruehwiler | LA4_IN, Informatik     | Mathematik 4.5, Deutsch 4.8  |
| Denis, Forster     | LA4_IN, Informatik     | Englisch 5.2, Mathematik 4.3 |
| David, Hollenstein | LA4_AU, Automation     | Mathematik 4.3, Deutsch 5.5  |

## Erste Normalform

Bei der ersten Normalform lautet die Regel:

> Bei einer Tabelle in der ersten Normalform müssen alle Attribute atomar sein und die Relation muss frei von Wiederholungsgruppen sein

Wenn wir uns die Ausgangstabelle anschauen sehen wir, dass wir Name in Vor- und Nachname teilen können. Dann können wir noch Abteilung und
Bezeichnung in zwei einzelne Attribute umwandeln. Zu guter Letzt müssen wir noch die Noten aufteilen in Fach und Note.

Darüber hinaus vergeben wir jedem zusammengehörenden Teil noch einen Primärschlüssel.

Wenn wir das alles gemacht haben, ergibt sich folgende Tabelle:

| PersID | Vorname | Nachname    | Abteilung | Bezeichnung | FachID | Fach       | Note |
|--------|---------|-------------|-----------|-------------|--------|------------|------|
| 1      | Pascal  | Bruehwiler  | LA4_IN    | Informatik  | 10     | Mathematik | 4.5  |
| 1      | Pascal  | Bruehwiler  | LA4_IN    | Informatik  | 11     | Deutsch    | 4.8  |
| 2      | Denis   | Forster     | LA4_IN    | Informatik  | 12     | Englisch   | 5.2  |
| 2      | Denis   | Forster     | LA4_IN    | Informatik  | 10     | Mathematik | 4.3  |
| 3      | David   | Hollenstein | LA4_AU    | Automation  | 10     | Mathematik | 4.3  |
| 3      | David   | Hollenstein | LA4_AU    | Automation  | 11     | Deutsch    | 5.5  |

## Zweite Normalform

Die Regel bei der zweiten Normalform lautet wie folgt:

> Eine Tabelle befindet sich genau dann in der zweiten Normalform, wenn sie sich in der ersten Normalform befindet und jedes Nichtschlüsselattribut
> von jedem Schlüsselkandidaten voll funktional abhängig ist.

Hier trennen wir also die Tabelle in mehrere Tabellen auf. Das heisst dort, wo wir überall einen Schlüssel haben, machen wir eine neue Tabelle.

Das kann wie folgt aussehen:

**Tabelle Person**:

| PersID | Vorname | Nachname    | Abteilung | Bezeichnung |
|--------|---------|-------------|-----------|-------------|
| 1      | Pascal  | Bruehwiler  | LA4_IN    | Informatik  |
| 2      | Denis   | Forster     | LA4_IN    | Informatik  |
| 3      | David   | Hollenstein | LA4_AU    | Automation  |

**Tabelle Fach**:

| FachID | Fach       |
|--------|------------|
| 10     | Mathematik |
| 11     | Deutsch    |
| 12     | Englisch   |

**Tabelle Noten**:

| NoteID | PersID | FachID | Note |
|--------|--------|--------|------|
| 100    | 1      | 10     | 4.5  |
| 101    | 1      | 11     | 4.8  |
| 102    | 2      | 12     | 5.2  |
| 103    | 2      | 10     | 4.3  |
| 104    | 3      | 10     | 4.3  |
| 105    | 3      | 11     | 5.5  |

## Dritte Normalform

Die dritte Normalform sagt folgendes:

> Eine Tabelle befindet sich in der 3. Normalform, wenn sie in der zweiten Normalform ist und kein Nicht-Schlüsselattribut vom Primärschlüssel
> indirekt abhängig ist.

**Tabelle Person**:

| PersID | Vorname | Nachname    | AbteilungID |
|--------|---------|-------------|-------------|
| 1      | Pascal  | Bruehwiler  | 100         |
| 2      | Denis   | Forster     | 100         |
| 3      | David   | Hollenstein | 101         |

**Tabelle Fach**:

| FachID | Fach       |
|--------|------------|
| 10     | Mathematik |
| 11     | Deutsch    |
| 12     | Englisch   |

**Tabelle Noten**:

| PersID | FachID | Note |
|--------|--------|------|
| 1      | 10     | 4.5  |
| 1      | 11     | 4.8  |
| 2      | 12     | 5.2  |
| 2      | 10     | 4.3  |
| 3      | 10     | 4.3  |
| 3      | 11     | 5.5  |

**Tabelle Abteilungen**:

| Abteilung ID | Kürzel | Bezeichnung |
|--------------|--------|-------------|
| 100          | LA4_IN | Informatik  |
| 101          | LA4_AU | Automation  |

Man sollte bei der Normalisierung jedoch beachten, dass es trotzdem noch praktikabel und gut zu verstehen ist. Wenn man alles auf die einzelnen
Bruchteile herunterbricht, kann es sehr umständlich und mühsam werden.

