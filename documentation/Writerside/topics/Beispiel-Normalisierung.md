# Beispiel: Normalisierung

<show-structure depth="2"/>

## Ausgangstabelle (Nullte Normalform)

Wir wollen diese Tabelle der nullten Normalform in eine Tabelle der dritten Normalform umwandeln:

| id_Lernender | Vorname | Nachname   | Strasse             | Hausnr. | PLZ  | Ort                 | Mail                                                                          | Telefon (Festnetz) | Mobil     | Geburtsdatum | Lehrberuf    | Fachrichtung            | Lehrstart  | Lehrende   | Berufsbildungsverantworlicher | Lohn 1. LJ | Lohn 2. LJ | Lohn 3. LJ | Lohn 4. LJ |
|--------------|---------|------------|---------------------|---------|------|---------------------|-------------------------------------------------------------------------------|--------------------|-----------|--------------|--------------|-------------------------|------------|------------|-------------------------------|------------|------------|------------|------------|
| 1            | Levin   | Bänninger  | Büfelderstrasse     | 25b     | 8370 | Sirnach             | [levin.baenninger@buhlergroup.com](mailto:levin.baenninger@buhlergroup.com)   |                    | 787001640 | 28.10.2007   | Informatiker | Applikationsentwicklung | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1200       |
| 2            | James   | Binks      | Rossenaustrasse     | 4a      | 9200 | Gossau              | [james.binks@buhlergroup.com](mailto:james.binks@buhlergroup.com)             |                    | 796541729 | 05.07.2007   | Informatiker | Applikationsentwicklung | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1200       |
| 3            | Bastian | Kind       | Rothen              | 103     | 9217 | Neukirch a. d. Thur | [Bastian.kind@buhlergroup.com](mailto:Bastian.kind@buhlergroup.com)           |                    | 797354463 | 21.01.2008   | Informatiker | Applikationsentwicklung | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1300       |
| 4            | Tobias  | Kuhn       | Unt. Haushaldenstr. | 12      | 8374 | Dussnang            | [tobias.kuhn@buhlergroup.com](mailto:tobias.kuhn@buhlergroup.com)             | 719100678          | 789467966 | 08.01.2008   | Informatiker | Applikationsentwicklung | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1300       |
| 5            | Ladina  | Bertagnoli | Lehmetstrasse       | 29      | 9247 | Henau               | [ladina.bertagnoli@buhlergroup.com](mailto:ladina.bertagnoli@buhlergroup.com) |                    | 783143190 | 02.11.2007   | Informatiker | Plattformentwicklung    | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1200       |
| 6            | Anika   | Aepli      | Schäfliwis          | 16      | 9104 | Waldstatt           | [anika.aepli@buuhlergroup.com](mailto:anika.aepli@buuhlergroup.com)           |                    | 798546676 | 13.10.2007   | Informatiker | Applikationsentwicklung | 01.08.2023 | 31.07.2027 | Denis Forster                 | 600        | 800        | 1000       | 1200       |

Jetzt teilen wir die einzelnen Bestandteile der Tabelle der nullten Normalform in mehrere kleine Tabellen auf und wandeln einzelne Attribute in
atomare Attribute um.

## Dritte Normalform

### Tabelle - Lernender

| id_Lernender | Vorname | Nachname   | Strasse             | Hausnr. | PLZ  | Ort                 | Mail                                                                          | Telefon (Festnetz) | Mobil     | Geburtsdatum | fs_Beruf | fs_Vertrag | fs_Lohn |
|--------------|---------|------------|---------------------|---------|------|---------------------|-------------------------------------------------------------------------------|--------------------|-----------|--------------|----------|------------|---------|
| 1            | Levin   | Bänninger  | Büfelderstrasse     | 25b     | 8370 | Sirnach             | [levin.baenninger@buhlergroup.com](mailto:levin.baenninger@buhlergroup.com)   |                    | 787001640 | 28.10.2007   | 10       | 103        | 1000    |
| 2            | James   | Binks      | Rossenaustrasse     | 4a      | 9200 | Gossau              | [james.binks@buhlergroup.com](mailto:james.binks@buhlergroup.com)             |                    | 796541729 | 05.07.2007   | 10       | 103        | 1000    |
| 3            | Bastian | Kind       | Rothen              | 103     | 9217 | Neukirch a. d. Thur | [Bastian.kind@buhlergroup.com](mailto:Bastian.kind@buhlergroup.com)           |                    | 797354463 | 21.01.2008   | 10       | 103        | 1000    |
| 4            | Tobias  | Kuhn       | Unt. Haushaldenstr. | 12      | 8374 | Dussnang            | [tobias.kuhn@buhlergroup.com](mailto:tobias.kuhn@buhlergroup.com)             | 719100678          | 789467966 | 08.01.2008   | 10       | 103        | 1000    |
| 5            | Ladina  | Bertagnoli | Lehmetstrasse       | 29      | 9247 | Henau               | [ladina.bertagnoli@buhlergroup.com](mailto:ladina.bertagnoli@buhlergroup.com) |                    | 783143190 | 02.11.2007   | 11       | 103        | 1000    |
| 6            | Anika   | Aepli      | Schäfliwis          | 16      | 9104 | Waldstatt           | [anika.aepli@buuhlergroup.com](mailto:anika.aepli@buuhlergroup.com)           |                    | 798546676 | 13.10.2007   | 10       | 103        | 1000    |

### Tabelle - Beruf

| id_Beruf | Lehrberuf                  | Fachrichtung            | fs_Berufsbildungsverantwortlicher |
|----------|----------------------------|-------------------------|-----------------------------------|
| 10       | Informatiker               | Applikationsentwicklung | 10000                             |
| 11       | Informatiker               | Plattformentwicklung    | 10000                             |
| 12       | EDB                        |                         | 10000                             |
| 13       | Polymechaniker             |                         | 10003                             |
| 14       | Konstrukteur               |                         | 10002                             |
| 15       | Automatiker                |                         | 10001                             |
| 16       | Anlagen- und Apparatebauer |                         | 10004                             |

### Tabelle - Vertrag

| id_Lehre | Lehrstart  | Lehrende   |
|----------|------------|------------|
| 100      | 01.08.2020 | 31.07.2024 |
| 101      | 01.08.2021 | 31.07.2025 |
| 102      | 01.08.2022 | 31.07.2026 |
| 103      | 01.08.2023 | 31.07.2027 |
| 104      | 01.08.2021 | 31.07.2024 |
| 105      | 01.08.2022 | 31.07.2025 |
| 106      | 01.08.2023 | 31.07.2026 |
| 107      | 01.08.2022 | 31.07.2024 |
| 108      | 01.08.2023 | 31.07.2026 |

### Tabelle - Lohnschema

| id_Lohn | Lohn 1. Lehrjahr | Lohn 2. Lehrjahr | Lohn 3. Lehrjahr | Lohn 4. Lehrjahr |
|---------|------------------|------------------|------------------|------------------|
| 1000    | 600              | 800              | 1000             | 1300             |
| 1001    | 650              | 850              | 1100             |                  |
| 1002    | 800              | 1000             | 1300             |                  |
| 1003    | 800              | 1000             |                  |                  |
| 1004    | 800              | 1300             |                  |                  |

### Tabelle - BBV

| id_Berufsbildungsverantwortlicher | Berufsbildungsverantwortlicher Vorname | Berufsbildungsverantwortlicher Nachname |
|-----------------------------------|----------------------------------------|-----------------------------------------|
| 10000                             | Denis                                  | Forster                                 |
| 10001                             | Ramon                                  | Mösle                                   |
| 10002                             | Oliver                                 | Braun                                   |
| 10003                             | Marc                                   | Zuppiger                                |
| 10004                             | Jeronim                                | Lazraj                                  |