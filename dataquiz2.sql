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
VALUES (1, 1, 'Java' 'OOP', 'Eclipse', 10);
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
VALUES (2, 1, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (3, 1, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (4, 3, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (5, 2, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (6, 2, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (7, 2, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (8, 1, 'Java', 'OOP', 'Eclipse', 10);
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
VALUES (9, 1,'Java', 'OOP', 'Eclipse', 10);
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
VALUES (10, 1, 'Java', 'OOP', 'Eclipse', 10);
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




