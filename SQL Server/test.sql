CREATE DATABASE testDB;

USE testDB;

-- Tabelle mit direktem Primary Key
CREATE TABLE tbl_test
(
    id_test int NOT NULL PRIMARY KEY,
    lastName varchar(50)
);

INSERT INTO tbl_test (id_test, lastName) 
VALUES 
(1, 'Bänninger'),
(2, 'Azizi');

SELECT * FROM tbl_test;


-- Tabelle mit zusammengesetztem Primary Key
CREATE TABLE tbl_test2
(
    id_test2 int NOT NULL,
    lastName varchar(50)
    CONSTRAINT pk_test2 PRIMARY KEY (id_test2, lastName)
);

INSERT INTO tbl_test2 (id_test2, lastName)
VALUES
(2, 'Bänninger');

SELECT * FROM tbl_test2;