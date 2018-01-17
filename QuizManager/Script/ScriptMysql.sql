create database quizmanagerdb;
use quizmanagerdb;

CREATE TABLE intrebare (
id_intrebare int NOT NULL auto_increment,
nivelDificultate int,
limbaj VARCHAR(20),
domeniu VARCHAR(45),
tehnologie VARCHAR(45),
punctaj int,
PRIMARY KEY (id_intrebare));

CREATE TABLE raspuns (
id_raspuns int NOT NULL auto_increment,
enunt VARCHAR(100),
valoareAdevar tinyint,
id_intrebare int, 
FOREIGN KEY (id_intrebare) REFERENCES intrebare(id_intrebare),
PRIMARY KEY (id_raspuns));


CREATE TABLE traducere_raspuns (
id_traducere int NOT NULL auto_increment,
enunt VARCHAR(500),
limba varchar(20),
id_raspuns int, 
FOREIGN KEY (id_raspuns) REFERENCES raspuns(id_raspuns),
PRIMARY KEY (id_traducere));

CREATE TABLE traducere_intrebare (
id_traducere int NOT NULL auto_increment,
enunt VARCHAR(100),
limba varchar(20),
id_intrebare int,
FOREIGN KEY (id_intrebare) REFERENCES intrebare(id_intrebare),
PRIMARY KEY (id_traducere));

CREATE TABLE utilizator (
username varchar(20) NOT NULL,
parola varchar(20),
rangAcces int,
PRIMARY KEY (username));

CREATE TABLE quiz (
id_quiz int NOT NULL auto_increment,
punctajTotal int,
informatiiGenerale varchar(100),
username varchar(20),
FOREIGN KEY (username) REFERENCES utilizator(username),
PRIMARY KEY (id_quiz));

CREATE TABLE intrebare_quiz (
id int NOT NULL auto_increment,
id_quiz int NOT NULL, 
id_intrebare int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_quiz) REFERENCES quiz(id_quiz),
FOREIGN KEY (id_intrebare) REFERENCES intrebare(id_intrebare));