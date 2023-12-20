CREATE DATABASE lehrvertragDB;

USE lehrvertragDB;
GO

CREATE TABLE tbl_Muttersprache
(
    id_Muttersprache int IDENTITY(1,1),
    Muttersprache varchar(50) NOT NULL,
    CONSTRAINT PK_Muttersprache PRIMARY KEY (id_Muttersprache)
);

CREATE TABLE tbl_Geschlecht
(
    id_Geschlecht int IDENTITY(1,1),
    Geschlecht varchar(2) NOT NULL UNIQUE,
    CONSTRAINT PK_Geschlecht PRIMARY KEY (id_Geschlecht)
);

CREATE TABLE tbl_Auslaenderausweis
(
    id_Auslaenderausweis int IDENTITY(1,1),
    Auslaenderstatus varchar(3) NOT NULL UNIQUE,
    CONSTRAINT PK_Auslaenderausweis PRIMARY KEY (id_Auslaenderausweis),
);

CREATE TABLE tbl_Lernender
(
    id_Lernender int IDENTITY(1,1),
    Nachname_Lernender varchar(50) NOT NULL,
    Vorname_Lernender varchar(50) NOT NULL,
    Strasse_Lernender varchar(50) NOT NULL,
    HausNr_Lernender varchar(5) NOT NULL,
    PLZ_Lernender smallint NOT NULL,
    Ort_Lernender varchar(50) NOT NULL,
    Geburtsdatum_Lernender date NOT NULL,
    fk_Muttersprache_Lernender int NOT NULL,
    fk_Geschlecht_Lernender int NOT NULL,
    Tel_Nr_Lernender varchar(20) NOT NULL,
    Mobile_Lernender varchar(20) NOT NULL,
    E_Mail_Lernender varchar(50) NOT NULL,
    Heimatort_Lernender varchar(50),
    Kanton_Lernender varchar(50),
    Staat_Lernender varchar(50) NOT NULL,
    AHV_Nr_Lernender varchar(50) NOT NULL,
    fk_Auslaenderausweis_Lernender int,
    CONSTRAINT PK_Lernender PRIMARY KEY (id_Lernender),
    CONSTRAINT FK_Muttersprache_Lernender FOREIGN KEY (fk_Muttersprache_Lernender) REFERENCES tbl_Muttersprache(id_Muttersprache),
    CONSTRAINT FK_Geschlecht_Lernender FOREIGN KEY (fk_Geschlecht_Lernender) REFERENCES tbl_Geschlecht(id_Geschlecht),
    CONSTRAINT fk_Auslaenderausweis_Lernender FOREIGN KEY (fk_Auslaenderausweis_Lernender) REFERENCES tbl_Auslaenderausweis(id_Auslaenderausweis),
    CONSTRAINT CHK_PLZ_Lernender CHECK (PLZ_Lernender >= 1000 AND PLZ_Lernender <= 9999),
    CONSTRAINT CHK_Geburtsdatum CHECK (Geburtsdatum_Lernender >= '1970-01-01' AND Geburtsdatum_Lernender >= '2100-01-01')
);

CREATE TABLE tbl_gV
(
    id_gV int IDENTITY(1,1),
    Nachname_gV varchar(50) NOT NULL,
    Vorname_gV varchar(50) NOT NULL,
    Strasse_gV varchar(50) NOT NULL,
    HausNr_gV varchar(5) NOT NULL,
    PLZ_gV smallint NOT NULL,
    Ort_gV varchar(50) NOT NULL,
    Tel_Nr_gV varchar(20) NOT NULL,
    Mobile_gV varchar(20) NOT NULL,
    E_Mail_gV varchar(50) NOT NULL,
    fk_Geschlecht_gV int NOT NULL,
    CONSTRAINT PK_gV PRIMARY KEY (id_gV),
    CONSTRAINT FK_Geschlecht_gV FOREIGN KEY (fk_Geschlecht_gV) REFERENCES tbl_Geschlecht(id_Geschlecht),
    CONSTRAINT CHK_PLZ_gV CHECK (PLZ_gV >= 1000 AND PLZ_gV <= 9999)
);

CREATE TABLE tbl_Lernender_gV
(
    id_Lernender_gV int IDENTITY(1,1),
    fk_Lernender int NOT NULL,
    fk_gV int NOT NULL,
    CONSTRAINT PK_Lernender_gV PRIMARY KEY (id_Lernender_gV),
    CONSTRAINT FK_Lernender_Lernender_gV FOREIGN KEY (fk_Lernender) REFERENCES tbl_Lernender(id_Lernender),
    CONSTRAINT FK_gV_Lernender_gV FOREIGN KEY (fk_gV) REFERENCES tbl_gV(id_gV)
);

CREATE TABLE tbl_Lehrbetrieb
(
    id_Lehrbetrieb int IDENTITY(1,1),
    LehrbetriebsNr varchar(30) NOT NULL,
    Firmenname varchar(50) NOT NULL,
    Strasse_Lehrbetrieb varchar(50) NOT NULL,
    HausNr_Lehrbetrieb varchar(5) NOT NULL, 
    PLZ_Lehrbetrieb smallint NOT NULL,
    Ort_Lehrbetrieb varchar(50) NOT NULL,
    Tel_Nr_Lehrbetrieb varchar(20) NOT NULL,
    E_Mail_Lehrbetrieb varchar(50) NOT NULL,
    Ausbildungsort varchar (100),
    Lehrbetriebsverbund bit NOT NULL,
    CONSTRAINT PK_Lehrbetrieb PRIMARY KEY (id_Lehrbetrieb)
);

CREATE TABLE tbl_Anschaffung
(
    id_Anschaffung int IDENTITY(1,1),
    Produktname varchar(100) NOT NULL,
    Preis smallmoney NOT NULL,
    CONSTRAINT PK_Anschaffung PRIMARY KEY (id_Anschaffung)
);

CREATE TABLE tbl_Lohnschema (
    id_Lohnschema int IDENTITY(1,1),
    Bildungsjahr1 smallmoney NOT NULL,
    Bildungsjahr2 smallmoney NOT NULL,
    Bildungsjahr3 smallmoney,
    Bildungsjahr4 smallmoney,
    Zulagen varchar(255),
    Monat13 bit NOT NULL,
    CONSTRAINT PK_Lohnschema PRIMARY KEY (id_Lohnschema)
);

CREATE TABLE tbl_Beilagen (
    id_Beilagen int IDENTITY(1,1),
    Beilagen varchar(255),
    CONSTRAINT PK_Beilagen PRIMARY KEY (id_Beilagen)
);

CREATE TABLE tbl_Lehrart (
    id_Lehrart int IDENTITY(1,1),
    Lehrart varchar(255) NOT NULL,
    CONSTRAINT id_Lehrstart PRIMARY KEY (id_Lehrart)
);

CREATE TABLE tbl_Berufsbezeichnung (
    id_Berufsbezeichnung int IDENTITY(1,1),
    Berufsbezeichnung varchar(255) NOT NULL,
    Fachrichtung varchar(255),
    CONSTRAINT PK_Berufsbezeichnung PRIMARY KEY (id_Berufsbezeichnung)
);

CREATE TABLE tbl_Profil (
    id_Profil int IDENTITY(1,1),
    Profil varchar(255) NOT NULL,
    CONSTRAINT PK_Profil PRIMARY KEY (id_Profil)
);

CREATE TABLE tbl_BBV (
    id_BBV int IDENTITY(1,1),
    Nachname_BBV varchar(50) NOT NULL,
    Vorname_BBV varchar(50) NOT NULL,
    Geburtsdatum_BBV date NOT NULL,
    E_Mail_BBV varchar(50) NOT NULL,
    CONSTRAINT PK_BBV PRIMARY KEY (id_BBV)
);

CREATE TABLE tbl_Beruf (
    id_Beruf int IDENTITY(1,1),
    fk_Bezeichnung int NOT NULL,
    fk_Profil int,
    fk_BBV int NOT NULL,
    Anzahl_Fachleute tinyint NOT NULL,
    Stellenprozente tinyint NOT NULL,
    CONSTRAINT PK_Beruf PRIMARY KEY (id_Beruf),
    CONSTRAINT FK_Bezeichnung_Beruf FOREIGN KEY (fk_Bezeichnung) REFERENCES tbl_Berufsbezeichnung(id_Berufsbezeichnung),
    CONSTRAINT FK_Profil_Beruf FOREIGN KEY (fk_Profil) REFERENCES tbl_Profil (id_Profil),
    CONSTRAINT FK_BBV_Beruf FOREIGN KEY (fk_BBV) REFERENCES tbl_BBV(id_BBV)
);

CREATE TABLE tbl_Ferienschema
(
  id_Ferienschema int IDENTITY(1,1),
  Bildungsjahr1 tinyint NOT NULL,
  Bildungsjahr2 tinyint NOT NULL,
  Bildungsjahr3 tinyint NOT NULL,
  Bildungsjahr4 tinyint NOT NULL,
  CONSTRAINT PK_Ferienschema PRIMARY KEY (id_Ferienschema)
);

CREATE TABLE tbl_Berufsfachschule
(
  id_Berufsfachschule int IDENTITY(1,1),
  Berufsschulname varchar(100) NOT NULL,
  CONSTRAINT PK_Berufsschule PRIMARY KEY (id_Berufsfachschule)
);
 
CREATE TABLE tbl_Unterrichtssprache
(
  id_Unterrichtssprache int IDENTITY(1,1),
  Unterrichtssprache varchar(50) NOT NULL,
  CONSTRAINT PK_Unterichtssprache PRIMARY KEY (id_Unterrichtssprache)
);
 
CREATE TABLE tbl_Kosten_Lernender
(
  id_Kosten_Lernender int IDENTITY(1,1),
  Reisespesen_Lernender bit NOT NULL,
  Verpflegung_Lernender bit NOT NULL,
  Unterkunft_Lernender bit NOT NULL,
  Schulmaterial_Lernender bit NOT NULL,
  ElektronischeGeraete_Lernender bit NOT NULL,
  CONSTRAINT PK_Kosten_Lernender PRIMARY KEY (id_Kosten_Lernender)
);
 
CREATE TABLE tbl_Kosten_Betrieb
(
  id_Kosten_Betrieb int IDENTITY(1,1),
  Reisespesen_Betrieb bit NOT NULL,
  Verpfelgung_Betrieb bit NOT NULL,
  Unterkunft_Betrieb bit NOT NULL,
  Schulmaterial_Betrieb bit NOT NULL,
  ElektronischeGeraete_Betrieb bit NOT NULL,
  CONSTRAINT PK_Kosten_Betrieb PRIMARY KEY (id_Kosten_Betrieb)
);

CREATE TABLE tbl_Schule
(
  id_Schule int IDENTITY(1,1),
  Berufsmaturität bit NOT NULL,
  fk_Berufsfachschule int NOT NULL,
  fk_Unterrichtssprache int NOT NULL,
  fk_Kosten_Lernender int NOT NULL,
  fk_Kosten_Betrieb int NOT NULL,
  CONSTRAINT PK_Schule PRIMARY KEY (id_Schule),
  CONSTRAINT FK_Berufsfachschule FOREIGN KEY (fk_Berufsfachschule) REFERENCES tbl_Berufsfachschule(id_Berufsfachschule),
  CONSTRAINT FK_Unterichtssprache FOREIGN KEY (fk_Unterrichtssprache) REFERENCES tbl_Unterrichtssprache(id_Unterrichtssprache),
  CONSTRAINT FK_Kosten_Lernender FOREIGN KEY (fk_Kosten_Lernender) REFERENCES tbl_Kosten_Lernender(id_Kosten_Lernender),
  CONSTRAINT FK_Kosten_Betrieb FOREIGN KEY (fk_Kosten_Betrieb) REFERENCES tbl_Kosten_Betrieb(id_Kosten_Betrieb)
);

CREATE TABLE tbl_Nichtberufsunfall
(
  id_Nichtberufsunfall int IDENTITY(1,1),
  Lernenderbeitrag tinyint NOT NULL,
  Betriebsbeitrag tinyint NOT NULL,
  CONSTRAINT PK_Nichtberufsunfall  PRIMARY KEY (id_Nichtberufsunfall)
);

CREATE TABLE tbl_Krankentaggeld
(
  id_Krankentaggeld int IDENTITY(1,1),
  Lernenderbeitrag tinyint NOT NULL,
  Betriebsbeitrag tinyint NOT NULL,
  CONSTRAINT PK_Krankentaggeld PRIMARY KEY (id_Krankentaggeld)
);

CREATE TABLE tbl_Versicherung
(
  id_Versicherung int IDENTITY(1,1),
  fk_Nichtberufsunfall int NOT NULL,
  fk_Krankentaggeld int NOT NULL,
  CONSTRAINT PK_Versicherung PRIMARY KEY (id_Versicherung),
  CONSTRAINT FK_Nichtberufsunfall_Versicherung FOREIGN KEY (fk_Nichtberufsunfall) REFERENCES tbl_Nichtberufsunfall(id_Nichtberufsunfall),
  CONSTRAINT FK_Krankentaggeld_Versicherung FOREIGN KEY (fk_Krankentaggeld) REFERENCES tbl_Krankentaggeld(id_Krankentaggeld)
);

CREATE TABLE tbl_Vertrag (
    id_Vertrag int IDENTITY(1,1),
    Vertragsnr varchar(255) NOT NULL,
    fk_Lehrbetrieb int NOT NULL,
    fk_Lernender int NOT NULL,
    fk_Lohnschema int NOT NULL,
    fk_Ferienschema int NOT NULL,
    fk_Schule int NOT NULL,
    fk_Beruf int NOT NULL,
    fk_Lehrart int NOT NULL,
    fk_Beilagen int,
    CONSTRAINT PK_Vertrag PRIMARY KEY (id_Vertrag),
    CONSTRAINT FK_Lehrbetrieb_Vertrag FOREIGN KEY (fk_Lehrbetrieb) REFERENCES tbl_Lehrbetrieb(id_Lehrbetrieb),
    CONSTRAINT FK_Lernender_Vertrag FOREIGN KEY (fk_Lernender) REFERENCES tbl_Lernender(id_Lernender),
    CONSTRAINT FK_Lohnschema_Vertrag FOREIGN KEY (fk_Lohnschema) REFERENCES tbl_Lohnschema(id_Lohnschema),
    CONSTRAINT FK_Ferienschema_Vertrag FOREIGN KEY (fk_Ferienschema) REFERENCES tbl_Ferienschema(id_Ferienschema),
    CONSTRAINT FK_Schule_Vertrag FOREIGN KEY (fk_Schule) REFERENCES tbl_Schule(id_Schule),
    CONSTRAINT FK_Beruf_Vertrag FOREIGN KEY (fk_Beruf) REFERENCES tbl_Beruf(id_Beruf),
    CONSTRAINT FK_Lehrart_Vertrag FOREIGN KEY (fk_Lehrart) REFERENCES tbl_Lehrart(id_Lehrart),
    CONSTRAINT FK_Beilagen_Vertrag FOREIGN KEY (fk_Beilagen) REFERENCES tbl_Beilagen(id_Beilagen)
);

CREATE TABLE tbl_Vertrag_Versicherung (
    id_Vertrag_Versicherung INT IDENTITY(1,1),
    fk_Vertrag int NOT NULL,
    fk_Versicherung int NOT NULL,
    CONSTRAINT PK_Vertrag_Versicherung PRIMARY KEY (id_Vertrag_Versicherung),
    CONSTRAINT FK_Vertrag_Vertrag_Versicherung FOREIGN KEY (fk_Vertrag) REFERENCES tbl_Vertrag(id_Vertrag),
    CONSTRAINT FK_Versicherung_Vertrag_Versicherung FOREIGN KEY (fk_Versicherung) REFERENCES tbl_Versicherung(id_Versicherung)
);

CREATE TABLE tbl_Vertrag_Anschaffung
(
    id_Vertrag_Anschaffung int IDENTITY(1,1),
    fk_Vertrag int NOT NULL,
    fk_Anschaffung int NOT NULL,
    CONSTRAINT PK_Vertrag_Anschaffung PRIMARY KEY (id_Vertrag_Anschaffung),
    CONSTRAINT FK_Vertrag_Vertrag_Anschaffung FOREIGN KEY (fk_Vertrag) REFERENCES tbl_Vertrag(id_Vertrag),
    CONSTRAINT FK_Anschaffung_Vertrag_Anschaffung FOREIGN KEY (fk_Anschaffung) REFERENCES tbl_Anschaffung(id_Anschaffung)
);

-- Insert data into tables

INSERT INTO tbl_Muttersprache (Muttersprache) 
VALUES 
('Deutsch'),
('Französisch'),
('Italienisch'),
('Rätoromanisch'),
('Spanisch');

INSERT INTO tbl_Geschlecht (Geschlecht)
VALUES
('m'),
('w');

INSERT INTO tbl_Auslaenderausweis (Auslaenderstatus)
VALUES
('B'),
('C'),
('G'),
('L');

INSERT INTO tbl_Lernender (Nachname_Lernender, Vorname_Lernender, Strasse_Lernender, HausNr_Lernender, PLZ_Lernender, Ort_Lernender, Geburtsdatum_Lernender, fk_Muttersprache_Lernender, fk_Geschlecht_Lernender, Tel_Nr_Lernender, Mobile_Lernender, E_Mail_Lernender, Heimatort_Lernender, Kanton_Lernender, Staat_Lernender, AHV_Nr_Lernender, fk_Auslaenderausweis_Lernender)
VALUES
('Mustermann', 'Max', 'Musterstrasse', '1', '8000', 'Zürich', '1990-01-01', 1, 1, '044 123 45 67', '079 123 45 67', 'max.mustermann@buhlergroup.com', 'Zürich', 'ZH', 'Schweiz', '756.1234.5678.90'),
('Muster', 'Hans', 'St.Gallerstrasse', '3', '9240', 'Uzwil', '1994-01-01', 1, 1, '044 123 45 67', '079 123 32 67', 'hans.muster@buhlergroup.com', 'Zürich', 'ZH', 'Schweiz', '756.1234.5678.92'),
('Muster', 'Gertrud', 'Musterstrasse', '4', '8000', 'Zürich', '1996-01-01', 1, 2, '044 123 45 67', '079 123 45 89', 'gertrud.muster@buhlergroup.com', 'Zürich', 'ZH', 'Schweiz', '756.1234.5678.93');

INSERT INTO tbl_gV (Nachname_gV, Vorname_gV, Strasse_gV, HausNr_gV, PLZ_gV, Ort_gV, Tel_Nr_gV, Mobile_gV, E_Mail_gV, fk_Geschlecht_gV)
VALUES
('Müller', 'Peter', 'St.Gallerstrasse', '3', '9240', 'Uzwil', '044 123 45 67', '079 123 32 67', 'hans.muster@gmail.com', 1),
('Meier', 'Fabienne', 'Musterstrasse', '4', '8000', 'Zürich', '044 123 45 67', '079 123 45 89', 'gertrud.muster@yahoo.com', 2),
('Pinter', 'Kurt', 'St.Gallerstrasse', '3', '9240', 'Uzwil', '044 123 45 67', '079 123 32 67', 'kurt.pinter@gmx.com', 1);

INSERT INTO tbl_Lernender_gV (fk_Lernender, fk_gV)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);

INSERT INTO tbl_Lehrbetrieb (LehrbetriebsNr, Firmenname, Strasse_Lehrbetrieb, HausNr_Lehrbetrieb, PLZ_Lehrbetrieb, Ort_Lehrbetrieb, Tel_Nr_Lehrbetrieb, E_Mail_Lehrbetrieb, Ausbildungsort, Lehrbetriebsverbund)
VALUES
('12345', 'Bühler AG', 'Gupfenstrasse', '5', '9240', 'Uzwil', '071 955 30 19', 'ausbidung@buhlergroup.com', 'Uzwil', 0),
('23401', 'Bühler AG', 'Industriestrasse', '17', '9050', 'Appenzell', '044 123 45 67', 'ausbildung@buhlergroup.com', 'Appenzell', 0);

INSERT INTO tbl_Anschaffung (Produktname, Preis)
VALUES
('Laptop', 1000),
('Bücher', 500),
('Schulmaterial', 100),
('Kleider', 200),
('Schuhe', 100);

INSERT INTO tbl_Lohnschema (Bildungsjahr1, Bildungsjahr2, Bildungsjahr3, Bildungsjahr4, Zulagen, Monat13)
VALUES
(600, 800, 1000, 1300, 'Keine', 1),
(650, 850, 1100, NULL, 'Keine', 1),
(800, 1000, 1300, NULL, 'Keine', 1),
(800, 1000, NULL, NULL, 'Keine', 1),
(800, 1300, NULL, NULL, 'Keine', 1),
(600, 800, 1000, 1300, 'Schulleistungen', 1),
(650, 850, 1100, NULL, 'Schulleistungen', 1),
(800, 1000, 1300, NULL, 'Schulleistungen', 1),
(800, 1000, NULL, NULL, 'Schulleistungen', 1),
(800, 1300, NULL, NULL, 'Schulleistungen', 1);

INSERT INTO tbl_Beilagen (Beilagen)
VALUES
('Keine'),
('BVG'),
('Krankenkasse'),
('Nichtberufsunfall'),
('Krankentaggeld'),
('BVG, Krankenkasse'),
('BVG, Nichtberufsunfall'),
('BVG, Krankenkasse, Nichtberufsunfall'),
('BVG, Krankenkasse, Nichtberufsunfall, Krankentaggeld');

INSERT INTO tbl_Lehrart (Lehrart)
VALUES
('Berufliche Grundbildung mit eidg. Fähigkeitszeugnis'),
('Berufliche Grundbildung mit eidg. Berufsattest'),
('Verkürzte berufliche Grundbildung');

INSERT INTO tbl_Berufsbezeichnung (Berufsbezeichnung, Fachrichtung)
VALUES
('Informatiker', 'Applikationsentwicklung'),
('Informatiker', 'Plattformentwicklung'),
('Automatiker', NULL),
('Konstrukteur', NULL);

INSERT INTO tbl_Profil (Profil)
VALUES
('E'),
('M'),
('B');

INSERT INTO tbl_BBV (Nachname_BBV, Vorname_BBV, Geburtsdatum_BBV, E_Mail_BBV)
VALUES
('Müller', 'Peter', '1990-01-01', 'peter.mueller@buhlergroup.com'),
('Meier', 'Fabienne', '1992-01-01', 'fabienne.meier@buhlergroup.com');

INSERT INTO tbl_Beruf (fk_Bezeichnung, fk_Profil, fk_BBV, Anzahl_Fachleute, Stellenprozente)
VALUES
(1, NULL, 1, 4, 20),
(2, NULL, 1, 3, 15),
(3, NULL, 2, 5, 25),
(4, NULL, 2, 2, 10);

INSERT INTO tbl_Ferienschema (Bildungsjahr1, Bildungsjahr2, Bildungsjahr3, Bildungsjahr4)
VALUES
(7, 6, 5, 5),
(6, 5, 5, NULL),
(5, 5, NULL, NULL);

INSERT INTO tbl_Berufsfachschule (Berufsschulname)
VALUES
('BBZ Wil'),
('BBZ Uzwil'),
('BBZ St.Gallen');

INSERT INTO tbl_Unterrichtssprache (Unterrichtssprache)
VALUES
('Deutsch'),
('Französisch'),
('Italienisch'),
('Englisch');

INSERT INTO tbl_Kosten_Lernender (Reisespesen_Lernender, Verpflegung_Lernender, Unterkunft_Lernender, Schulmaterial_Lernender, ElektronischeGeraete_Lernender)
VALUES
(1, 1, 1, 1, 1),
(0, 0, 0, 0, 0);

INSERT INTO tbl_Kosten_Betrieb (Reisespesen_Betrieb, Verpfelgung_Betrieb, Unterkunft_Betrieb, Schulmaterial_Betrieb, ElektronischeGeraete_Betrieb)
VALUES
(1, 1, 1, 1, 1),
(0, 0, 0, 0, 0);

INSERT INTO tbl_Nichtberufsunfall (Lernenderbeitrag, Betriebsbeitrag)
VALUES
(0, 100),
(50, 50),
(100, 0);

INSERT INTO tbl_Krankentaggeld (Lernenderbeitrag, Betriebsbeitrag)
VALUES
(0, 100),
(50, 50),
(100, 0);

INSERT INTO tbl_Versicherung (fk_Nichtberufsunfall, fk_Krankentaggeld)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO tbl_Vertrag (Vertragsnr, fk_Lehrbetrieb, fk_Lernender, fk_Lohnschema, fk_Ferienschema, fk_Schule, fk_Beruf, fk_Lehrart)

VALUES
('12345-1', 1, 1, 1, 1, 1, 1, 1),
('12345-2', 1, 2, 1, 1, 1, 1, 1),
('12345-3', 1, 3, 1, 1, 1, 1, 1),
('12345-4', 1, 4, 1, 1, 1, 2, 1),
('23401-1', 2, 1, 1, 1, 2, 2, 1),
('23401-2', 2, 2, 1, 1, 2, 2, 1),
('23401-3', 2, 3, 1, 1, 2, 3, 3),
('23401-4', 2, 4, 1, 1, 2, 4, 1);

INSERT INTO tbl_Vertrag_Versicherung (fk_Vertrag, fk_Versicherung)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2);

INSERT INTO tbl_Vertrag_Anschaffung (fk_Vertrag, fk_Anschaffung)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);

DROP DATABASE testDB;