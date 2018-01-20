use quizmanagerdb;

-- UTILIZATORI :
INSERT INTO utilizator (username , parola , rangAcces)
VALUES ('plsNotMe', 'plsNotMe123', 1);
INSERT INTO utilizator (username , parola , rangAcces)
VALUES ('flaviu', 'flaviu123', 2);



-- QUIZURI :
INSERT INTO quiz (id_quiz , punctajTotal , informatiiGENerale  , username)
VALUES (DEfault, 100, 'Intrebari Java', 'plsNotMe');
INSERT INTO quiz (id_quiz , punctajTotal , informatiiGENerale  , username)
VALUES (DEfault, 100, 'Intrebari DB-Sql', 'flaviu');


-- INTREBARE 1 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (1, 1, 'Java' 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 1,2:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (1,'Is Java a platform dependent language?', 'English',1);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (2,'Ist Java Platform abhängig?', 'German',1);
-- RASPUNS 1 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (1, true, 1);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (1, 'Yes', 'English', 1);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (2, 'Ja', 'German', 1);
-- RASPUNS 2 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (2, false, 1);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (3, 'No', 'English', 2);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (4, 'Nein', 'German', 2);
-- RASPUNS 3 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (3, false, 1);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (5, 'No,because it`s a database', 'English', 3);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (6, 'Nein, weil es ein Datenbank ist', 'German', 3);
-- RASPUNS 4 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (4, false, 1);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (7, 'Yes,because it`s a database', 'English', 4);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (8, 'Ja, weil es ein Datenbank ist', 'German', 4);


-- INTREBARE 2 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (2, 1, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 3,4:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (3,'How to Initialize Pointers in JAVA?', 'English',2);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (4,'Wie initialisiert man Zeiger in JAVA?', 'German',2);
-- RASPUNS 5 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (5, false, 2);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (9, 'using the address &', 'English', 5);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (10, 'mit der Adresse &', 'German', 5);
-- RASPUNS 6 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (6, false, 2);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (11, 'using the operator *', 'English', 6);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (12, 'mit DEm Operator *', 'German', 6);
-- RASPUNS 7 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (7, false, 2);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (13, 'there are no pointers in java', 'English', 7);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (14, 'es gibt keine Zeiger in Java', 'German', 7);
-- RASPUNS 8 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (8, false, 2);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (15, 'using the operator %', 'English', 8);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (16, 'mit dem Operator %', 'German', 8);


-- INTREBARE 3 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (3, 1, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 5,6:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (5,'What types of JAVA apps are there?', 'English',3);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (6,'Welche Arten von JAVA-Apps gibt es?', 'German',3);
-- RASPUNS 9 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (9, true, 3);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (17, 'self-employed applications', 'English', 9);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (18, 'selbständige Apps', 'German', 9);
-- RASPUNS 10 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (10, false, 3);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (19, 'Database', 'English', 10);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (20, 'Datenbanken', 'German', 10);
-- RASPUNS 11 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (11, true, 3);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (21, 'applications that run on the server', 'English', 11);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (22, 'Apps die auf dem Server ausgeführt werden', 'German', 11);
-- RASPUNS 12 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (12, true, 3);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (23, 'applications that run on the client', 'English', 12);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (24, 'Apps die auf dem Client ausgeführt werden', 'German', 12);


-- INTREBARE 4 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (4, 3, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 7,8:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (7,'How can an applet called UnApplet.class be run?', 'English',4);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (8,'Wie kann ein Applet namens UnApplet.class ausgeführt werden?', 'German',4);
-- RASPUNS 13 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (13, false, 4);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (25, 'using the UnApplet java command', 'English', 13);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (26, 'mit DEm Java command UnApplet', 'German', 13);
-- RASPUNS 14 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (14, true, 4);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (27, 'using the appletviewer command and an HTML file containing a tag like <applet code = "UnApplet.class: ..>', 'English', 14);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (28, 'mit dem Befehl appletviewer und einer HTML-Datei mit einem Tag wie <applet code "UnApplet.class: ..>','German', 14);
-- RASPUNS 15 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (15, false, 4);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (29, 'using the javac command;', 'English', 15);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (30, 'mit dem Befehl javac;', 'German', 15);
-- RASPUNS 16 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (16, false, 4);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (31, 'none', 'English', 16);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (32, 'keine', 'German', 16);





-- INTREBARE 5 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj domENiu, tehnologie, punctaj)
VALUES (5, 2, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 9,10:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (9,'With what command can we disassemble a binary code JAVA?', 'English',5);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (10,'Mit welcher JAVA-Befehl können wir einen Binärcode zerlegen?', 'German',5);
-- RASPUNS 17 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (17, false, 5);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (33, 'java –p', 'English', 17);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (34, 'java –p', 'German', 17);
-- RASPUNS 18 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (18, false, 5);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (35, 'javac', 'English', 18);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (36, 'javac', 'German', 18);
-- RASPUNS 19 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (19, true, 5);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (37, 'javap', 'English', 19);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (38, 'javap', 'German', 19);
-- RASPUNS 20 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (20, false, 5);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (39, 'rmic', 'English', 20);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (40, 'rmic', 'German', 20);







-- INTREBARE 6 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (6, 2, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 11,12:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (11,'A program written in Java will be launched with the command:', 'English',6);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (12,'Ein Java Programm wird gestartet mit:', 'German',6);


-- RASPUNS 21 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (21, false, 6);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (41, 'javac Test', 'English', 21);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (42, 'javac Test', 'German', 21);
-- RASPUNS 22 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (22, true, 6);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (43, 'java Test', 'English', 22);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (44, 'java Test', 'German', 22);
-- RASPUNS 23 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (23, false, 6);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (45, 'java Test.java', 'English', 23);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (46, 'java Test.java', 'German', 23);
-- RASPUNS 24 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (24, false, 6);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (47, 'java Test.class', 'English', 24);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (48, 'java Test.class', 'German', 24);






-- INTREBARE 7 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (7, 2, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 13,14:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (13,'A program written in Java will be compiled with the command:', 'English',7);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (14,'Ein Java Programm wird kompiliert mit:', 'German',7);


-- RASPUNS 25 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (25, false, 7);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (49, 'javac Test', 'English', 25);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (50, 'javac Test', 'German', 25);
-- RASPUNS 26 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (26, false, 7);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (51, 'java Test', 'English', 26);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (52, 'java Test', 'German', 26);
-- RASPUNS 27 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (27, true, 7);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (53, 'javac Test.java', 'English', 27);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (54, 'javac Test.java', 'German', 27);
-- RASPUNS 28 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (28, false, 7);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (55, 'java Test.class', 'English', 28);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (56, 'java Test.class', 'German', 28);






-- INTREBARE 8 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (8, 1, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 15,16:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (15,'Java applications can run on the following operating system:', 'English',8);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (16,'Java-Apps werden/konnen unter dem folgenden Betriebssystem ausgeführt:', 'German',8);


-- RASPUNS 29 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (29, true, 8);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (57, 'Windows', 'English', 29);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (58, 'Windows', 'German', 29);
-- RASPUNS 30 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (30, true, 8);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (59, 'Linux', 'English', 30);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (60, 'Linux', 'German', 30);
-- RASPUNS 31 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (31, true, 8);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (61, 'Unix', 'English', 31);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (62, 'Unix', 'German', 31);
-- RASPUNS 32 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (32, false, 8);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (63, 'None', 'English', 32);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (64, 'Keine', 'German', 32);





-- INTREBARE 9 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (9, 1,'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 17,18:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (17,'What method does the browser call on a newly uploaded applet?', 'English',9);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (18,'Welche Methode ruft der Browser zu einem neue hochgeladene Applet an?', 'German',9);


-- RASPUNS 33 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (33, false, 9);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (65, 'Main', 'English', 33);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (66, 'Main', 'German', 33);
-- RASPUNS 34 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (34, false, 9);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (67, 'Start', 'English', 34);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (68, 'Start', 'German', 34);
-- RASPUNS 35 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (35, true, 9);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (69, 'Init', 'English', 35);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (70, 'Init', 'German', 35);
-- RASPUNS 36 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (36, false, 9);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (71, 'Paint', 'English', 36);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (72, 'Paint', 'German', 36);






-- INTREBARE 10 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (10, 1, 'Java', 'Back-End', 'Eclipse', 10);
-- TRADUCERE INTREBARE 19,20:
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (19,'What is the role of statements?', 'English',10);
INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (20,'Welche Rolle spielen die Aussagen?', 'German',10);


-- RASPUNS 37 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (37, true, 10);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (73, 'Allows classes to be referenced without prefixes', 'English', 37);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (74, 'Ermöglicht das Referenzieren von Klassen ohne Präfixe', 'German', 37);
-- RASPUNS 38 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (38, false, 10);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (75, 'Eliminates the need to declare the variables', 'English', 38);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (76, 'Eliminiert die Notwendigkeit, die Variablen zu deklarieren', 'German', 38);
-- RASPUNS 39 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (39, false, 10);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (77, 'Allows import of used images', 'English', 39);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (78, 'Ermöglicht den Import von gebrauchten Bildern', 'German', 39);
-- RASPUNS 40 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (40, false, 10);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (79, 'Eliminates direct calls to classless functions', 'English', 40);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (80, 'Beseitigtintrebare_quiz direkte Anrufe zu klassENlosEN FunktionEN', 'German', 40);







-- INTREBARE 11:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (11, 3, 'Sql', 'Baze de date', 'Mysql', 10);

-- TRADUCERE INTREBARE 21,22:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (21,'intrebare Baze de date, sql, mysql, 3', 'English',11);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (22,'intrebare Baze de date, sql, mysql, 3', 'German',11);


-- RASPUNS 41 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (41, true, 11);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (81, 'Yes', 'English', 41);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (82, 'Ja', 'German', 41);


-- RASPUNS 42 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (42, false, 11);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (83, 'Yes', 'English', 42);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (84, 'Ja', 'German', 42);


-- RASPUNS 43 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (43, false, 11);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (85, 'Yes', 'English', 43);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (86, 'Ja', 'German', 43);


-- RASPUNS 44 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (44, false, 11);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (87, 'Yes', 'English', 44);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (88, 'Ja', 'German', 44);















-- INTREBARE 12:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (12, 4, 'Sql' , 'Baze de date', 'Mysql', 10);

-- TRADUCERE INTREBARE 23,24:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (23,'intrebare Baze de date, sql, mysql, 4', 'English',12);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (24,'intrebare Baze de date, sql, mysql, 4', 'German',12);


-- RASPUNS 45 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (45, true, 12);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (89, 'Yes', 'English', 45);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (90, 'Ja', 'German', 45);


-- RASPUNS 46 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (46, false, 12);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (91, 'Yes', 'English', 46);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (92, 'Ja', 'German', 46);


-- RASPUNS 47 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (47, false, 12);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (93, 'Yes', 'English', 47);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (94, 'Ja', 'German', 47);


-- RASPUNS 48 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (48, true, 12);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (95, 'Yes', 'English', 48);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (96, 'Ja', 'German', 48);





-- INTREBARE 13:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (13, 1, 'Sql' , 'Baze de date', 'Mysql', 10);

-- TRADUCERE INTREBARE 25,26:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (25,'intrebare Baze de date ,sql , mysql , 1', 'English',13);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (26,'intrebare Baze de date ,sql , mysql, 1', 'German',13);


-- RASPUNS 49 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (49, false, 13);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (97, 'Wrong answer for : Baze de date ,sql , mysql, 1 ', 'English', 49);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (98, 'Falsche Losung fur Baze de date ,sql , mysql, 1  ', 'German', 49);


-- RASPUNS 50 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (50, false, 13);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (99, 'Wrong answer for : Baze de date ,sql , mysql, 1 ', 'English', 50);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (100, 'Falsche Losung fur : Baze de date ,sql , mysql, 1  ', 'German', 50);


-- RASPUNS 51 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (51, false, 13);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (101, 'Wrong answer for : Baze de date ,sql , mysql, 1 ', 'English', 51);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (102, 'Falsche Losung fur : Baze de date ,sql , mysql, 1 ', 'German', 51);


-- RASPUNS 52 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (52, true, 13);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (103, 'Correct answer  for : Baze de date ,sql , mysql, 1 ', 'English', 52);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (104, 'Richtig Losung fur Baze de date ,sql , mysql, 1 ', 'German', 52);







-- INTREBARE 14:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (14, 3, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 27,28:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (27,'Question for Baze de date, sql, sql management studio, 3', 'English',14);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (28,'Frage fur Baze de date, sql, sql management studio, 3', 'German',14);


-- RASPUNS 53 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (53, false, 14);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (105, 'Wrong answer for Baze de date, sql, sql management studio, 3 ', 'English', 53);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (106, 'Falsche Losung fur Baze de date, sql, sql management studio, 3  ', 'German', 53);


-- RASPUNS 54 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (54, true, 14);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (107, 'Correct answer for Baze de date, sql, sql management studio, 3 ', 'English', 54);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (108, 'Richtig Losung fur Baze de date, sql, sql management studio, 3  ', 'German', 54);


-- RASPUNS 55 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (55, false, 14);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (109, 'Wrong answer for Baze de date, sql, sql management studio, 3 ', 'English', 55);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (110, 'Falsche Losung fur Baze de date, sql, sql management studio, 3 ', 'German', 55);


-- RASPUNS 56 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (56, false, 14);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (111, 'Wrong answer  for Baze de date, sql, sql management studio, 3 ', 'English', 56);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (112, 'Falsche Losung fur Baze de date, sql, sql management studio, 3 ', 'German', 56);





-- INTREBARE 15:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (15, 4, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 29,30:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (29,'Question for Baze de date, sql, sql management studio, 4', 'English',15);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (30,'Frage fur Baze de date, sql, sql management studio, 4', 'German',15);


-- RASPUNS 57 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (57, false, 15);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (113, 'Wrong answer for Baze de date, sql, sql management studio, 4 ', 'English', 57);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (114, 'Falsche Losung fur Baze de date, sql, sql management studio, 4  ', 'German', 57);


-- RASPUNS 58 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (58, true, 15);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (115, 'Correct answer for Baze de date, sql, sql management studio, 4 ', 'English', 58);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (116, 'Richtig Losung fur Baze de date, sql, sql management studio, 4  ', 'German', 58);


-- RASPUNS 59 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (59, true, 15);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (117, 'Correct answer for Baze de date, sql, sql management studio, 4 ', 'English', 59);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (118, 'Richtig Losung fur Baze de date, sql, sql management studio, 4 ', 'German', 59);


-- RASPUNS 60 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (60, true, 15);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (119, 'Correct answer  for Baze de date, sql, sql management studio, 4 ', 'English', 60);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (120, 'Richtig Losung fur Baze de date, sql, sql management studio, 4 ', 'German', 60);









-- INTREBARE 16:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (16, 3, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 31,32:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (31,'Question for Baze de date, sql, sql management studio, 3', 'English',16);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (32,'Frage fur Baze de date, sql, sql management studio, 3', 'German',16);


-- RASPUNS 61 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (61, true, 16);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (121, 'Correct answer for Baze de date, sql, sql management studio, 3 ', 'English', 61);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (122, 'Richtig Losung fur Baze de date, sql, sql management studio, 3  ', 'German', 61);


-- RASPUNS 62 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (62, false, 16);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (123, 'Wrong answer for Baze de date, sql, sql management studio, 3 ', 'English', 62);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (124, 'Falsche Losung fur Baze de date, sql, sql management studio, 3  ', 'German', 62);


-- RASPUNS 63 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (63, false, 16);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (125, 'Wrong answer for Baze de date, sql, sql management studio, 3 ', 'English', 63);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (126, 'Falsche Losung fur Baze de date, sql, sql management studio, 3 ', 'German', 63);


-- RASPUNS 64 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (64, true, 16);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (127, 'Correct answer  for Baze de date, sql, sql management studio, 3 ', 'English', 64);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (128, 'Richtig Losung fur Baze de date, sql, sql management studio, 3 ', 'German', 64);





-- INTREBARE 17:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (17, 1, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 33,34:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (33,'Question for Baze de date, sql, sql management studio, 1', 'English',17);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (34,'Frage fur Baze de date, sql, sql management studio, 1', 'German',17);


-- RASPUNS 65 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (65, false, 17);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (129, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 65);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (130, 'Falsche Losung fur Baze de date, sql, sql management studio, 1  ', 'German', 65);


-- RASPUNS 66 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (66, false, 17);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (131, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 66);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (132, 'Falsche Losung fur Baze de date, sql, sql management studio, 1  ', 'German', 66);


-- RASPUNS 67 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (67, false, 17);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (133, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 67);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (134, 'Falsche Losung fur Baze de date, sql, sql management studio, 1 ', 'German', 67);


-- RASPUNS 68 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (68, true, 17);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (135, 'Correct answer  for Baze de date, sql, sql management studio, 1 ', 'English', 68);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (136, 'Richtig Losung fur Baze de date, sql, sql management studio, 1 ', 'German', 68);









-- INTREBARE 18:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (18, 4, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 35,36:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (35,'Question for Baze de date, sql, sql management studio, 4', 'English',18);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (36,'Frage fur Baze de date, sql, sql management studio, 4', 'German',18);


-- RASPUNS 69 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (69, true, 18);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (137, 'Correct answer for Baze de date, sql, sql management studio, 4 ', 'English', 69);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (138, 'Richtig Losung fur Baze de date, sql, sql management studio, 4  ', 'German', 69);


-- RASPUNS 70 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (70, true, 18);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (139, 'Correct answer for Baze de date, sql, sql management studio, 4 ', 'English', 70);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (140, 'Richtig Losung fur Baze de date, sql, sql management studio, 4  ', 'German', 70);


-- RASPUNS 71 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (71, true, 18);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (141, 'Correct answer for Baze de date, sql, sql management studio, 4 ', 'English', 71);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (142, 'Richtig Losung fur Baze de date, sql, sql management studio, 4 ', 'German', 71);


-- RASPUNS 72 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (72, true, 18);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (143, 'Correct answer  for Baze de date, sql, sql management studio, 4 ', 'English', 72);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (144, 'Richtig Losung fur Baze de date, sql, sql management studio, 4 ', 'German', 72);






-- INTREBARE 19:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (19, 1, 'Sql', 'Baze de date', 'sql management studio', 10);

-- TRADUCERE INTREBARE 37,38:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (37,'Question for Baze de date, sql, sql management studio, 1', 'English',19);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (38,'Frage fur Baze de date, sql, sql management studio, 1', 'German',19);


-- RASPUNS 73 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (73, false, 19);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (145, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 73);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (146, 'Falsche Losung fur Baze de date, sql, sql management studio, 1  ', 'German', 73);


-- RASPUNS 74 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (74, false, 19);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (147, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 74);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (148, 'Falsche Losung fur Baze de date, sql, sql management studio, 1  ', 'German', 74);


-- RASPUNS 75 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (75, false, 19);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (149, 'Wrong answer for Baze de date, sql, sql management studio, 1 ', 'English', 75);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (150, 'Falsche Losung fur Baze de date, sql, sql management studio, 1 ', 'German', 75);


-- RASPUNS 76 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (76, true, 19);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (151, 'Correct answer  for Baze de date, sql, sql management studio, 1 ', 'English', 76);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (152, 'Richtig Losung fur Baze de date, sql, sql management studio, 1 ', 'German', 76);






-- INTREBARE 20:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (20, 3, 'Sql', 'Baze de date', 'Mysql', 10);

-- TRADUCERE INTREBARE 39,40:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (39,'Question for Baze de date, sql, Mysql, 3', 'English',20);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (40,'Frage fur Baze de date, sql, Mysql, 3', 'German',20);


-- RASPUNS 77 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (77, true, 20);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (153, 'Correct answer for Baze de date, sql, Mysql, 3 ', 'English', 77);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (154, 'Richtig Losung fur Baze de date, sql, Mysql, 3  ', 'German', 77);


-- RASPUNS 78 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (78, false, 20);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (155, 'Wrong answer for Baze de date, sql, Mysql, 3 ', 'English', 78);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (156, 'Falsche Losung fur Baze de date, sql, Mysql, 3  ', 'German', 78);


-- RASPUNS 79 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (79, false, 20);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (157, 'Wrong answer for Baze de date, sql, Mysql, 3 ', 'English', 79);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (158, 'Falsche Losung fur Baze de date, sql, Mysql, 3 ', 'German', 79);


-- RASPUNS 80 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (80, true, 20);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (159, 'Correct answer  for Baze de date, sql, Mysql, 3 ', 'English', 80);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (160, 'Richtig Losung fur Baze de date, sql, Mysql, 3 ', 'German', 80);








-- INTREBARE 21:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (21, 1, 'HTML', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 41,42:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (41,'Question for Front-End, HTML, SublimeText, 1', 'English',21);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (42,'Frage fur Front-End, HTML, SublimeText, 1', 'German',21);


-- RASPUNS 81 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (81, false, 21);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (161, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 81);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (162, 'Falsche Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 81);


-- RASPUNS 82 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (82, true, 21);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (163, 'Correct answer for Front-End, HTML, SublimeText, 1 ', 'English', 82);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (164, 'Richtig Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 82);


-- RASPUNS 83 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (83, false, 21);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (165, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 83);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (166, 'Falsche Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 83);


-- RASPUNS 84 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (84, false, 21);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (167, 'Wrong answer  for Front-End, HTML, SublimeText, 1 ', 'English', 84);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (168, 'Falsche Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 84);










-- INTREBARE 22:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (22, 1, 'HTML', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 43,44:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (43,'Question for Front-End, HTML, SublimeText, 1', 'English',22);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (44,'Frage fur Front-End, HTML, SublimeText, 1', 'German',22);


-- RASPUNS 85 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (85, false, 22);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (169, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 85);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (170, 'Falsche Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 85);


-- RASPUNS 86 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (86, false, 22);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (171, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 86);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (172, 'Falsche Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 86);


-- RASPUNS 87 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (87, false, 22);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (173, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 87);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (174, 'Falsche Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 87);


-- RASPUNS 88 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (88, false, 22);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (175, 'Wrong answer  for Front-End, HTML, SublimeText, 1 ', 'English', 88);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (176, 'Falsche Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 88);











-- INTREBARE 23:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (23, 1, 'HTML', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 45,46:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (45,'Question for Front-End, HTML, SublimeText, 1', 'English',23);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (46,'Frage fur Front-End, HTML, SublimeText, 1', 'German',23);


-- RASPUNS 89 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (89, false, 23);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (177, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 89);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (178, 'Falsche Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 89);


-- RASPUNS 90 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (90, false, 23);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (179, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 90);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (180, 'Falsche Losung fur Front-End, HTML, SublimeText, 1  ', 'German', 90);


-- RASPUNS 91 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (91, false, 23);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (181, 'Wrong answer for Front-End, HTML, SublimeText, 1 ', 'English', 91);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (182, 'Falsche Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 91);


-- RASPUNS 92 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (92, true, 23);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (183, 'Correct answer  for Front-End, HTML, SublimeText, 1 ', 'English', 92);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (184, 'Richtig Losung fur Front-End, HTML, SublimeText, 1 ', 'German', 92);







-- INTREBARE 24:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (24, 1, 'CSS', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 47,48:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (47,'Question for Front-End, CSS, SublimeText, 1', 'English',24);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (48,'Frage fur Front-End, CSS, SublimeText, 1', 'German',24);


-- RASPUNS 93 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (93, false, 24);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (185, 'Wrong answer for Front-End, CSS, SublimeText, 1 ', 'English', 93);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (186, 'Falsche Losung fur Front-End, CSS, SublimeText, 1  ', 'German', 93);


-- RASPUNS 94 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (94, false, 24);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (187, 'Wrong answer for Front-End, CSS, SublimeText, 1 ', 'English', 94);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (188, 'Falsche Losung fur Front-End, CSS, SublimeText, 1  ', 'German', 94);


-- RASPUNS 95 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (95, true, 24);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (189, 'Correct answer for Front-End, CSS, SublimeText, 1 ', 'English', 95);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (190, 'Richtig Losung fur Front-End, CSS, SublimeText, 1 ', 'German', 95);


-- RASPUNS 96 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (96, false, 24);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (191, 'Wrong answer  for Front-End, CSS, SublimeText, 1 ', 'English', 96);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (192, 'Falsche Losung fur Front-End, CSS, SublimeText, 1 ', 'German', 96);








-- INTREBARE 25:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (25, 2, 'CSS', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 49,50:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (49,'Question for Front-End, CSS, SublimeText, 2', 'English',25);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (50,'Frage fur Front-End, CSS, SublimeText, 2', 'German',25);


-- RASPUNS 97 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (97, true, 25);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (193, 'Correct answer for Front-End, CSS, SublimeText, 2 ', 'English', 97);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (194, 'Richtig Losung fur Front-End, CSS, SublimeText, 2  ', 'German', 97);


-- RASPUNS 98 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (98, false, 25);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (195, 'Wrong answer for Front-End, CSS, SublimeText, 2 ', 'English', 98);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (196, 'Falsche Losung fur Front-End, CSS, SublimeText, 2  ', 'German', 98);


-- RASPUNS 99 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (99, true, 25);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (197, 'Correct answer for Front-End, CSS, SublimeText, 2 ', 'English', 99);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (198, 'Richtig Losung fur Front-End, CSS, SublimeText, 2 ', 'German', 99);


-- RASPUNS 100 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (100, false, 25);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (199, 'Wrong answer  for Front-End, CSS, SublimeText, 2 ', 'English', 100);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (200, 'Falsche Losung fur Front-End, CSS, SublimeText, 2 ', 'German', 100);





-- INTREBARE 26:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (26, 3, 'CSS', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 51,52:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (51,'Question for Front-End, CSS, SublimeText, 3', 'English',26);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (52,'Frage fur Front-End, CSS, SublimeText, 3', 'German',26);


-- RASPUNS 101 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (101, true, 26);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (201, 'Correct answer for Front-End, CSS, SublimeText, 3 ', 'English', 101);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (202, 'Richtig Losung fur Front-End, CSS, SublimeText, 3  ', 'German', 101);


-- RASPUNS 102 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (102, true, 26);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (203, 'Correct answer for Front-End, CSS, SublimeText, 3 ', 'English', 102);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (204, 'Richtig Losung fur Front-End, CSS, SublimeText, 3  ', 'German', 102);


-- RASPUNS 103 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (103, true, 26);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (205, 'Correct answer for Front-End, CSS, SublimeText, 3 ', 'English', 103);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (206, 'Richtig Losung fur Front-End, CSS, SublimeText, 3 ', 'German', 103);


-- RASPUNS 104 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (104, false, 26);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (207, 'Wrong answer  for Front-End, CSS, SublimeText, 3 ', 'English', 104);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (208, 'Falsche Losung fur Front-End, CSS, SublimeText, 3 ', 'German', 104);






-- INTREBARE 27:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (27, 2, 'CSS', 'Front-End', 'SublimeText', 10);

-- TRADUCERE INTREBARE 53,54:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (53,'Question for Front-End, CSS, SublimeText, 2', 'English',27);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (54,'Frage fur Front-End, CSS, SublimeText, 2', 'German',27);


-- RASPUNS 105 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (105, false, 27);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (209, 'Wrong answer for Front-End, CSS, SublimeText, 2 ', 'English', 105);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (210, 'Falsche Losung fur Front-End, CSS, SublimeText, 2  ', 'German', 105);


-- RASPUNS 106 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (106, true, 27);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (211, 'Correct answer for Front-End, CSS, SublimeText, 2 ', 'English', 106);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (212, 'Richtig Losung fur Front-End, CSS, SublimeText, 2  ', 'German', 106);


-- RASPUNS 107 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (107, true, 27);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (213, 'Correct answer for Front-End, CSS, SublimeText, 2 ', 'English', 107);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (214, 'Richtig Losung fur Front-End, CSS, SublimeText, 2 ', 'German', 107);


-- RASPUNS 108 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (108, false, 27);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (215, 'Wrong answer  for Front-End, CSS, SublimeText, 2 ', 'English', 108);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (216, 'Falsche Losung fur Front-End, CSS, SublimeText, 2 ', 'German', 108);





-- INTREBARE 28:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (28, 1, 'JavaScript', 'Front-End', 'Eclipse', 10);

-- TRADUCERE INTREBARE 55,56:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (55,'Question for Front-End, JavaScript, Eclipse, 1', 'English',28);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (56,'Frage fur Front-End, JavaScript, Eclipse, 1', 'German',28);


-- RASPUNS 109 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (109, false, 28);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (217, 'Wrong answer for Front-End, JavaScript, Eclipse, 1 ', 'English', 109);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (218, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 1  ', 'German', 109);


-- RASPUNS 110 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (110, true, 28);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (219, 'Correct answer for Front-End, JavaScript, Eclipse, 1 ', 'English', 110);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (220, 'Richtig Losung fur Front-End, JavaScript, Eclipse, 1  ', 'German', 110);


-- RASPUNS 111 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (111, false, 28);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (221, 'Wrong answer for Front-End, JavaScript, Eclipse, 1 ', 'English', 111);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (222, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 1 ', 'German', 111);


-- RASPUNS 112 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (112, false, 28);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (223, 'Wrong answer  for Front-End, JavaScript, Eclipse, 1 ', 'English', 112);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (224, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 1 ', 'German', 112);





-- INTREBARE 29:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (29, 2, 'JavaScript', 'Front-End', 'Eclipse', 10);

-- TRADUCERE INTREBARE 57,58:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (57,'Question for Front-End, JavaScript, Eclipse, 2', 'English',29);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (58,'Frage fur Front-End, JavaScript, Eclipse, 2', 'German',29);


-- RASPUNS 113 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (113, false, 29);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (225, 'Wrong answer for Front-End, JavaScript, Eclipse, 2 ', 'English', 113);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (226, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 2  ', 'German', 113);


-- RASPUNS 114 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (114, false, 29);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (227, 'Wrong answer for Front-End, JavaScript, Eclipse, 2 ', 'English', 114);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (228, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 2  ', 'German', 114);


-- RASPUNS 115 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (115, false, 29);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (229, 'Wrong answer for Front-End, JavaScript, Eclipse, 2 ', 'English', 115);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (230, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 2 ', 'German', 115);


-- RASPUNS 116 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (116, true, 29);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (231, 'Correct answer  for Front-End, JavaScript, Eclipse, 2 ', 'English', 116);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (232, 'Richtig Losung fur Front-End, JavaScript, Eclipse, 2 ', 'German', 116);





-- INTREBARE 30:

INSERT INTO intrebare (id_intrebare, nivelDificultate, limbaj, domENiu, tehnologie, punctaj)
VALUES (30, 3, 'JavaScript', 'Front-End', 'Eclipse', 10);

-- TRADUCERE INTREBARE 59,60:

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (59,'Question for Front-End, JavaScript, Eclipse, 3', 'English',30);

INSERT INTO traducere_intrebare (id_traducere, ENunt, limba, id_intrebare)
VALUES (60,'Frage fur Front-End, JavaScript, Eclipse, 3', 'German',30);


-- RASPUNS 117 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (117, false, 30);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (233, 'Wrong answer for Front-End, JavaScript, Eclipse, 3 ', 'English', 117);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (234, 'Falsche Losung fur Front-End, JavaScript, Eclipse, 3  ', 'German', 117);


-- RASPUNS 118 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (118, true, 30);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (235, 'Correct answer for Front-End, JavaScript, Eclipse, 3 ', 'English', 118);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (236, 'Richtig Losung fur Front-End, JavaScript, Eclipse, 3  ', 'German', 118);


-- RASPUNS 119 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (119, true, 30);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (237, 'Correct answer for Front-End, JavaScript, Eclipse, 3 ', 'English', 119);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (238, 'Richtig Losung fur Front-End, JavaScript, Eclipse, 3 ', 'German', 119);


-- RASPUNS 120 :
INSERT INTO raspuns (id_raspuns, valoareADEvar, id_intrebare)
VALUES (120, true, 30);


INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (239, 'Correct answer  for Front-End, JavaScript, Eclipse, 3 ', 'English', 120);
INSERT INTO traducere_raspuns (id_traducere, ENunt, limba, id_raspuns)
VALUES (240, 'Richtig Losung fur Front-End, JavaScript, Eclipse, 3 ', 'German', 120);



-- QUIZ/INTREBARE :
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '11');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '12');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '13');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '14');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '15');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '16');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '17');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '18');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '19');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('2', '20');


-- QUIZ/INTREBARE :
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '21');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '22');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '23');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '24');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '25');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '26');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '27');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '28');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '29');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('3', '30');














-- QUIZ/INTREBARE :
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '1');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '2');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '3');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '4');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '5');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '6');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '7');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '8');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '9');
INSERT INTO intrebare_quiz (id_quiz , id_intrebare )
VALUES ('1', '10');




