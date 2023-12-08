# String Datentypen

| Datentyp      | Beschreibung                        | Max. Grösse           | Speicher                    |
|---------------|-------------------------------------|-----------------------|-----------------------------|
| char(n)       | String mit fester Breite            | 8'000 Zeichen         | Definierte Breite           |
| varchar(n)    | String mit variabler Breite         | 8'000 Zeichen         | 2 Bytes + Anzahl an Zeichen |
| varchar(max)  | String mit variabler Breite         | 1'037'741'824 Zeichen | 2 Bytes + Anzahl an Zeichen |
| text          | String mit variabler Breite         | 2GB Textdaten         | 4 Bytes + Anzahl an Zeichen |
| nchar         | Unicode String mit fester Breite    | 4'000 Zeichen         | Definierte Breite * 2       |
| nvarchar      | Unicode String mit variabler Breite | 4'000 Zeichen         |                             |
| nvarchar(max) | Unicode String mit variabler Breite | 536'870'912 Zeichen   |                             |
| ntext         | Unicode String mit variabler Breite | 2GB Textdaten         |                             |
| image         | Bild                                | 2GB                   |                             |
