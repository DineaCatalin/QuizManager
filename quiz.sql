CREATE TABLE Intrebare (
    idIntrebare int NOT NULL PRIMARY KEY,
    nivelDificultate INTEGER,
	limbaj VARCHAR(20),
	domeniu VARCHAR(45),
	tehnologie VARCHAR(45),
	punctaj bigint
	);

CREATE TABLE Raspuns (
    idRaspuns int NOT NULL PRIMARY KEY,
	enunt VARCHAR(100),
	valoareAdevar binary,
	idIntrebare int FOREIGN KEY REFERENCES Intrebare(idIntrebare)
	);

CREATE TABLE TraducereRaspuns (
    idTraducere int NOT NULL PRIMARY KEY,
	enunt VARCHAR(100),
	limba varchar(20),
	idRaspuns varchar(200)
	);

CREATE TABLE TraducereIntrebare (
    idTraducere int NOT NULL PRIMARY KEY,
	enunt VARCHAR(100),
	limba varchar(20),
	idIntrebare int FOREIGN KEY REFERENCES Intrebare(idIntrebare)
	);

CREATE TABLE Utilizator (
    idUtilizator integer NOT NULL PRIMARY KEY,
	username varchar(20),
	parola varchar(20),
	rangAcces integer
	);


CREATE TABLE Quiz (
    idQuiz integer NOT NULL PRIMARY KEY,
	punctajTotal integer,
	informatiiGenerale varchar(100),
	idUtilizator integer FOREIGN KEY REFERENCES Utilizator(idUtilizator)
	);



CREATE TABLE IntrebareQuiz (

    idIntrebare integer, 
	idQuiz integer not null,
	primary key (idIntrebare , idQuiz),
	CONSTRAINT fkidQuiz FOREIGN KEY (idQuiz) REFERENCES Quiz(idQuiz),
	CONSTRAINT fkidIntrebare FOREIGN KEY (idIntrebare) REFERENCES Intrebare(idIntrebare)
	);