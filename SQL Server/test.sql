CREATE DATABASE testDB;

-- Um nur bestimmten Code auszuführen, Code auswählen
USE testDB;

CREATE TABLE tbl_Lernende
(
    id_Lernende int IDENTITY(1,1) PRIMARY KEY,
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Geburtsdatum date NOT NULL,
    PLZ smallint NOT NULL,
);

INSERT INTO tbl_Lernende
    (Vorname, Nachname, Geburtsdatum, PLZ)
VALUES
    ('Levin', 'Baenninger', '2007-10-28', 8370)

SELECT *
FROM tbl_Lernende;

DELETE FROM tbl_Lernende
WHERE id_Lernende = 1;

DROP TABLE tbl_Lernende;