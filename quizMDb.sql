CREATE TABLE intrebare (
id_intrebare int NOT NULL auto_increment,
nivelDificultate INTEGER,
limbaj VARCHAR(25),
domeniu VARCHAR(45),
tehnologie VARCHAR(45),
punctaj int,
PRIMARY KEY (id_intrebare));

CREATE TABLE raspuns (
id_raspuns int NOT NULL auto_increment,
enunt VARCHAR(500),
valoareAdevar binary,
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
enunt VARCHAR(500),
limba varchar(20),
id_intrebare int,
FOREIGN KEY (id_intrebare) REFERENCES intrebare(id_intrebare),
PRIMARY KEY (id_traducere));

CREATE TABLE utilizator (
id_utilizator int NOT NULL auto_increment,
username varchar(20),
parola varchar(20),
rangAcces int,
PRIMARY KEY (id_utilizator));

CREATE TABLE quiz (
id_quiz int NOT NULL auto_increment,
punctajTotal int,
informatiiGenerale varchar(100),
id_utilizator int,
FOREIGN KEY (id_utilizator) REFERENCES utilizator(id_utilizator),
PRIMARY KEY (id_quiz));

CREATE TABLE intrebare_quiz (
id_quiz int NOT NULL, 
id_intrebare int NOT NULL,
PRIMARY KEY (id_intrebare , id_quiz),
CONSTRAINT fkidquiz FOREIGN KEY (id_quiz) REFERENCES quiz(id_quiz),
CONSTRAINT fkidintrebare FOREIGN KEY (id_intrebare) REFERENCES intrebare(id_intrebare));
