CREATE DATABASE nesaDB;
USE nesaDB;

-- Alle Tabellen erstellen
CREATE TABLE tbl_Lehrer
(
    id_Lehrer int IDENTITY(1,1),
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Lehrerkuerzel varchar(10) NOT NULL UNIQUE,
    CONSTRAINT PK_Lehrer PRIMARY KEY (id_Lehrer)
);

CREATE TABLE tbl_Fach
(
    id_Fach int IDENTITY(1,1),
    Fachkürzel varchar(10) NOT NULL UNIQUE,
    Bezeichnung varchar(255) NOT NULL UNIQUE,
    CONSTRAINT PK_Fach PRIMARY KEY (id_Fach)
);

CREATE TABLE tbl_Klasse
(
    id_Klasse int IDENTITY(1,1),
    Klassenkürzel varchar(10) NOT NULL UNIQUE,
    CONSTRAINT PK_Klasse PRIMARY KEY (id_Klasse)
);

CREATE TABLE tbl_Lernender
(
    id_Lernender int IDENTITY(1,1),
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    CONSTRAINT PK_Lernender PRIMARY KEY (id_Lernender)
);

CREATE TABLE tbl_Klasse_Lehrer_Fach
(
    id_Klasse_Lehrer_Fach int IDENTITY(1,1),
    fk_Klasse int NOT NULL,
    fk_Lehrer int NOT NULL,
    fk_Fach int NOT NULL,
    CONSTRAINT PK_Klasse_Lehrer_Fach PRIMARY KEY (id_Klasse_Lehrer_Fach),
    CONSTRAINT FK_Klasse_KLF FOREIGN KEY (fk_Klasse) REFERENCES tbl_Klasse(id_Klasse),
    CONSTRAINT FK_Lehrer FOREIGN KEY (fk_Lehrer) REFERENCES tbl_Lehrer(id_Lehrer),
    CONSTRAINT FK_Fach FOREIGN KEY (fk_Fach) REFERENCES tbl_Fach(id_Fach)
);

CREATE TABLE tbl_Lernender_Klasse
(
    id_Lernender_Klasse int IDENTITY(1,1),
    fk_Lernender int NOT NULL,
    fk_Klasse int NOT NULL,
    CONSTRAINT PK_Lerndender_Klasse PRIMARY KEY (id_Lernender_Klasse),
    CONSTRAINT FK_Lernender FOREIGN KEY (fk_Lernender) REFERENCES tbl_Lernender(id_Lernender),
    CONSTRAINT FK_Klasse_LK FOREIGN KEY (fk_Klasse) REFERENCES tbl_Klasse(id_Klasse)
);

CREATE TABLE tbl_Pruefung
(
    id_Pruefung int IDENTITY(1,1), 
    fk_Klasse_Lehrer_Fach int NOT NULL,
    Datum date NOT NULL,
    Thema varchar(255) NOT NULL,
    Gewichtung tinyint NOT NULL DEFAULT 1,
    CONSTRAINT PK_Pruefung PRIMARY KEY (id_Pruefung),
    CONSTRAINT FK_Klasse_Lehrer_Fach FOREIGN KEY (fk_Klasse_Lehrer_Fach) REFERENCES tbl_Klasse_Lehrer_Fach(id_Klasse_Lehrer_Fach),
);

CREATE TABLE tbl_Note
(
    id_Note int IDENTITY(1,1),
    fk_Pruefung int NOT NULL,
    fk_Lernender int NOT NULL,
    Note decimal(2,1) NOT NULL
    CONSTRAINT PK_Note PRIMARY KEY (id_Note),
    CONSTRAINT FK_Pruefung FOREIGN KEY (fk_Pruefung) REFERENCES tbl_Pruefung(id_Pruefung),
    CONSTRAINT FK_Lernender_Note FOREIGN KEY (fk_Lernender) REFERENCES tbl_Lernender(id_Lernender),
    CONSTRAINT CHK_Note CHECK (Note >= 1 AND Note <= 6)
);

-- Daten einfügen
INSERT INTO tbl_Lehrer (Vorname, Nachname, Lehrerkuerzel)
VALUES
('Oliver', 'Lux', 'LUO'),
('Silvio', 'DallAcqua', 'DASI'),
('Michael', 'Senn', 'SEMI'),
('Nicola', 'DIndia', 'DIN'),
('Marion', 'Mügel', 'MUMA');

INSERT INTO tbl_Fach (Fachkürzel, Bezeichnung)
VALUES
('117', 'Informatik- und Netzinfrastruktur für ein kleines Unternehmen realisieren'),
('162', 'Daten analysieren und modellieren'),
('231', 'Datenschutz und Datensicherheit anwenden'),
('319', 'Applikationen entwerfen und implementieren'),
('BMG', 'Mathematik Grundlagen'),
('BFR', 'Französisch (Zweite Landessprache)'),
('BEN', 'Englisch (Dritte Sprache)');

INSERT INTO tbl_Klasse (Klassenkürzel)
VALUES
('BMTL1a'),
('BMTL1b'),
('BMTL1c'),
('BMTL2a'),
('BMTL2b'),
('INA1a'),
('INA1b'),
('INA1c'),
('INA2a'),
('INA2b'),
('INP1a'),
('INP1b'),
('INP2a'),
('INP2b');

INSERT INTO tbl_Lernender (Vorname, Nachname)
VALUES
('Levin', 'Bänninger'),
('Tobias', 'Kuhn'),
('Bastian', 'Kind'),
('Lukas', 'Gubler'),
('Andrin', 'Sutter'),
('Pascal', 'Aeschbacher');

INSERT INTO tbl_Klasse_Lehrer_Fach (fk_Klasse, fk_Lehrer, fk_Fach)
VALUES
(6, 1, 1),
(6, 1, 3),
(6, 2, 2),
(6, 2, 4),
(3, 3, 5),
(3, 4, 6),
(3, 5, 7);

INSERT INTO tbl_Lernender_Klasse (fk_Lernender, fk_Klasse)
VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 12),
(5, 7),
(6, 7),
(1, 6),
(2, 6),
(3, 6);

INSERT INTO tbl_Pruefung (fk_Klasse_Lehrer_Fach, Datum, Thema)
VALUES
(1, '2023-10-08', 'Prüfung 1')

INSERT INTO tbl_Note (fk_Pruefung, fk_Lernender, Note)
VALUES
(1, 1, 5.5),
(1, 2, 4.5);

-- Queries
SELECT * FROM tbl_Lehrer;
SELECT * FROM tbl_Fach;
SELECT * FROM tbl_Klasse;
SELECT * FROM tbl_Lernender;

SELECT tbl_Klasse_Lehrer_Fach.id_Klasse_Lehrer_Fach, tbl_Klasse.Klassenkürzel, tbl_Lehrer.Lehrerkuerzel, tbl_Fach.Fachkürzel
FROM (((tbl_Klasse_Lehrer_Fach
INNER JOIN tbl_Klasse ON tbl_Klasse_Lehrer_Fach.fk_Klasse = tbl_Klasse.id_Klasse)
INNER JOIN tbl_Lehrer ON tbl_Klasse_Lehrer_Fach.fk_Lehrer = tbl_Lehrer.id_Lehrer)
INNER JOIN tbl_Fach ON tbl_Klasse_Lehrer_Fach.fk_Fach = tbl_Fach.id_Fach);

SELECT tbl_Lernender_Klasse.id_Lernender_Klasse, (tbl_Lernender.Vorname + ' ' + tbl_Lernender.Nachname) AS "Voller Name", tbl_Klasse.Klassenkürzel
FROM ((tbl_Lernender_Klasse
INNER JOIN tbl_Lernender ON tbl_Lernender_Klasse.fk_Lernender = tbl_Lernender.id_Lernender)
INNER JOIN tbl_Klasse ON tbl_Lernender_Klasse.fk_Klasse = tbl_Klasse.id_Klasse);

SELECT tbl_Pruefung.id_Pruefung, (tbl_Fach.Fachkürzel + '-' + tbl_Klasse.Klassenkürzel + '-' + tbl_Lehrer.Lehrerkuerzel) AS Kurs, tbl_Pruefung.Datum, tbl_Pruefung.Thema, tbl_Pruefung.Gewichtung
FROM ((((tbl_Pruefung
LEFT JOIN tbl_Klasse_Lehrer_Fach ON tbl_Pruefung.fk_Klasse_Lehrer_Fach = tbl_Klasse_Lehrer_Fach.id_Klasse_Lehrer_Fach)
INNER JOIN tbl_Fach ON tbl_Klasse_Lehrer_Fach.fk_Fach = tbl_Fach.id_Fach)
INNER JOIN tbl_Klasse ON tbl_Klasse_Lehrer_Fach.fk_Klasse = tbl_Klasse.id_Klasse)
INNER JOIN tbl_Lehrer ON tbl_Klasse_Lehrer_Fach.fk_Lehrer = tbl_Lehrer.id_Lehrer);

SELECT tbl_Note.id_Note, (tbl_Fach.Fachkürzel + '-' + tbl_Klasse.Klassenkürzel + '-' + tbl_Lehrer.Lehrerkuerzel + ' | ' + tbl_Pruefung.Thema) AS Prüfung, (tbl_Lernender.Vorname + ' ' + tbl_Lernender.Nachname) AS "Voller Name", tbl_Note.Note
FROM ((((((tbl_Note
LEFT JOIN tbl_Pruefung ON tbl_Note.fk_Pruefung = tbl_Note.id_Note)
LEFT JOIN tbl_Klasse_Lehrer_Fach ON tbl_Pruefung.fk_Klasse_Lehrer_Fach = tbl_Klasse_Lehrer_Fach.id_Klasse_Lehrer_Fach)
INNER JOIN tbl_Fach ON tbl_Klasse_Lehrer_Fach.fk_Fach = tbl_Fach.id_Fach)
INNER JOIN tbl_Klasse ON tbl_Klasse_Lehrer_Fach.fk_Klasse = tbl_Klasse.id_Klasse)
INNER JOIN tbl_Lehrer ON tbl_Klasse_Lehrer_Fach.fk_Lehrer = tbl_Lehrer.id_Lehrer)
INNER JOIN tbl_Lernender ON tbl_Note.fk_Lernender = tbl_Lernender.id_Lernender);
