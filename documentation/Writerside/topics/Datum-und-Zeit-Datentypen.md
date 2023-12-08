# Datum und Zeit Datentypen

| Datentypen    | Beschreibung                                                 | Speicher      |
|---------------|--------------------------------------------------------------|---------------|
| datetime      | Vom 01.01.1753 bis 31.12.9999 mit 3.33ms Präzision           | 8 Byte        |
| datetime2     | Vom 01.01.0001 bis 31.12.9999 mit 100 Nanosekunden Präzision | 6 bis 8 Bytes |
| smalldatetime | Vom 01.01.1900 bis 06.06.2079 mit 1min Präzision             | 4 Bytes       |
| date          | Nur ein Datum speichern. Wie bei `datetime2`                 | 3 Bytes       |
