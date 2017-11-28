
-- UTILIZATORI :
INSERT INTO utilizator (id_utilizator , username , parola , rangAcces)
VALUES (1, 'plsNotMe', 'plsNotMe123', 1);
INSERT INTO utilizator (id_utilizator , username , parola , rangAcces)
VALUES (2, 'flaviu', 'flaviu123', 2);



-- QUIZURI :
INSERT INTO quiz (id_quiz , punctajTotal , informatiiGenerale  , id_utilizator)
VALUES (default, 100, 'Intrebari Java', 1);
INSERT INTO quiz (id_quiz , punctajTotal , informatiiGenerale  , id_utilizator)
VALUES (default, 100, 'Intrebari DB-Sql', 2);


-- INTREBARE 1 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (1, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 1,2:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (1,'Is Java a platform dependent language?', 'EN',1);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (2,'Ist Java Platform abhängig?', 'DE',1);
-- RASPUNS 1 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (1, 1, 1);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (1, 'Yes', 'EN', 1);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (2, 'Ja', 'DE', 1);
-- RASPUNS 2 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (2, 0, 1);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (3, 'No', 'EN', 2);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (4, 'Nein', 'DE', 2);
-- RASPUNS 3 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (3, 0, 1);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (5, 'No,because it`s a database', 'EN', 3);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (6, 'Nein, weil es ein Datenbank ist', 'DE', 3);
-- RASPUNS 4 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (4, 0, 1);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (7, 'Yes,because it`s a database', 'EN', 4);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (8, 'Ja, weil es ein Datenbank ist', 'DE', 4);


-- INTREBARE 2 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (2, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 3,4:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (3,'How to Initialize Pointers in JAVA?', 'EN',2);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (4,'Wie initialisiert man Zeiger in JAVA?', 'DE',2);
-- RASPUNS 5 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (5, 0, 2);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (9, 'using the address &', 'EN', 5);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (10, 'mit der Adresse &', 'DE', 5);
-- RASPUNS 6 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (6, 0, 2);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (11, 'using the operator *', 'EN', 6);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (12, 'mit dem Operator *', 'DE', 6);
-- RASPUNS 7 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (7, 1, 2);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (13, 'there are no pointers in java', 'EN', 7);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (14, 'es gibt keine Zeiger in Java', 'DE', 7);
-- RASPUNS 8 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (8, 0, 2);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (15, 'using the operator %', 'EN', 8);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (16, 'mit dem Operator %', 'DE', 8);


-- INTREBARE 3 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (3, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 5,6:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (5,'What types of JAVA apps are there?', 'EN',3);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (6,'Welche Arten von JAVA-Apps gibt es?', 'DE',3);
-- RASPUNS 9 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (9, 1, 3);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (17, 'self-employed applications', 'EN', 9);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (18, 'selbständige Apps', 'DE', 9);
-- RASPUNS 10 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (10, 0, 3);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (19, 'Database', 'EN', 10);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (20, 'Datenbanken', 'DE', 10);
-- RASPUNS 11 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (11, 1, 3);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (21, 'applications that run on the server', 'EN', 11);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (22, 'Apps die auf dem Server ausgeführt werden', 'DE', 11);
-- RASPUNS 12 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (12, 1, 3);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (23, 'applications that run on the client', 'EN', 12);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (24, 'Apps die auf dem Client ausgeführt werden', 'DE', 12);


-- INTREBARE 4 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (4, 3, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 7,8:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (7,'How can an applet called UnApplet.class be run?', 'EN',4);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (8,'Wie kann ein Applet namens UnApplet.class ausgeführt werden?', 'DE',4);
-- RASPUNS 13 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (13, 0, 4);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (25, 'using the UnApplet java command', 'EN', 13);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (26, 'mit dem Java command UnApplet', 'DE', 13);
-- RASPUNS 14 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (14, 1, 4);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (27, 'using the appletviewer command and an HTML file containing a tag like <applet code = "UnApplet.class: ..>', 'EN', 14);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (28, 'mit dem Befehl appletviewer und einer HTML-Datei mit einem Tag wie <applet code = "UnApplet.class: ..>','DE', 14);
-- RASPUNS 15 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (15, 0, 4);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (29, 'using the javac command;', 'EN', 15);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (30, 'mit dem Befehl javac;', 'DE', 15);
-- RASPUNS 16 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (16, 0, 4);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (31, 'none', 'EN', 16);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (32, 'keine', 'DE', 16);





-- INTREBARE 5 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (5, 2, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 9,10:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (9,'With what command can we disassemble a binary code JAVA?', 'EN',5);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (10,'Mit welcher JAVA-Befehl können wir einen Binärcode zerlegen??', 'DE',5);
-- RASPUNS 17 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (17, 0, 5);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (33, 'java –p', 'EN', 17);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (34, 'java –p', 'DE', 17);
-- RASPUNS 18 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (18, 0, 5);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (35, 'javac', 'EN', 18);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (36, 'javac', 'DE', 18);
-- RASPUNS 19 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (19, 1, 5);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (37, 'javap', 'EN', 19);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (38, 'javap', 'DE', 19);
-- RASPUNS 20 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (20, 0, 5);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (39, 'rmic', 'EN', 20);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (40, 'rmic', 'DE', 20);







-- INTREBARE 6 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (6, 2, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 11,12:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (11,'A program written in Java will be launched with the command:', 'EN',6);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (12,'Ein Java Programm wird gestartet mit:', 'DE',6);


-- RASPUNS 21 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (21, 0, 6);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (41, 'javac Test', 'EN', 21);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (42, 'javac Test', 'DE', 21);
-- RASPUNS 22 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (22, 1, 6);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (43, 'java Test', 'EN', 22);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (44, 'java Test', 'DE', 22);
-- RASPUNS 23 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (23, 0, 6);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (45, 'java Test.java', 'EN', 23);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (46, 'java Test.java', 'DE', 23);
-- RASPUNS 24 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (24, 0, 6);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (47, 'java Test.class', 'EN', 24);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (48, 'java Test.class', 'DE', 24);






-- INTREBARE 7 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (7, 2, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 13,14:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (13,'A program written in Java will be compiled with the command:', 'EN',7);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (14,'Ein Java Programm wird kompiliert mit:', 'DE',7);


-- RASPUNS 25 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (25, 0, 7);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (49, 'javac Test', 'EN', 25);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (50, 'javac Test', 'DE', 25);
-- RASPUNS 26 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (26, 0, 7);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (51, 'java Test', 'EN', 26);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (52, 'java Test', 'DE', 26);
-- RASPUNS 27 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (27, 1, 7);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (53, 'javac Test.java', 'EN', 27);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (54, 'javac Test.java', 'DE', 27);
-- RASPUNS 28 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (28, 0, 7);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (55, 'java Test.class', 'EN', 28);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (56, 'java Test.class', 'DE', 28);






-- INTREBARE 8 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (8, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 15,16:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (15,'Java applications can run on the following operating system:', 'EN',8);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (16,'Java-Apps werden/konnen unter dem folgenden Betriebssystem ausgeführt:', 'DE',8);


-- RASPUNS 29 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (29, 1, 8);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (57, 'Windows', 'EN', 29);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (58, 'Windows', 'DE', 29);
-- RASPUNS 30 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (30, 1, 8);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (59, 'Linux', 'EN', 30);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (60, 'Linux', 'DE', 30);
-- RASPUNS 31 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (31, 1, 8);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (61, 'Unix', 'EN', 31);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (62, 'Unix', 'DE', 31);
-- RASPUNS 32 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (32, 0, 8);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (63, 'None', 'EN', 32);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (64, 'Keine', 'DE', 32);





-- INTREBARE 9 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (9, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 17,18:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (17,'What method does the browser call on a newly uploaded applet?', 'EN',9);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (18,'Welche Methode ruft der Browser zu einem neue hochgeladenen Applet an?', 'DE',9);


-- RASPUNS 33 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (33, 0, 9);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (65, 'Main', 'EN', 33);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (66, 'Main', 'DE', 33);
-- RASPUNS 34 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (34, 0, 9);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (67, 'Start', 'EN', 34);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (68, 'Start', 'DE', 34);
-- RASPUNS 35 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (35, 1, 9);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (69, 'Init', 'EN', 35);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (70, 'Init', 'DE', 35);
-- RASPUNS 36 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (36, 0, 9);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (71, 'Paint', 'EN', 36);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (72, 'Paint', 'DE', 36);






-- INTREBARE 10 :
INSERT INTO intrebare (id_intrebare, nivelDificultate, domeniu, tehnologie, punctaj)
VALUES (10, 1, 'OOP', 'Java', 10);
-- TRADUCERE INTREBARE 19,20:
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (19,'What is the role of statements?', 'EN',10);
INSERT INTO traducere_intrebare (id_traducere, enunt, limba, id_intrebare)
VALUES (20,'Welche Rolle spielen die Aussagen?', 'DE',10);


-- RASPUNS 37 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (37, 1, 10);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (73, 'Allows classes to be referenced without prefixes', 'EN', 37);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (74, 'Ermöglicht das Referenzieren von Klassen ohne Präfixe', 'DE', 37);
-- RASPUNS 38 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (38, 0, 10);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (75, 'Eliminates the need to declare the variables', 'EN', 38);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (76, 'Eliminiert die Notwendigkeit, die Variablen zu deklarieren', 'DE', 38);
-- RASPUNS 39 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (39, 0, 10);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (77, 'Allows import of used images', 'EN', 39);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (78, 'Ermöglicht den Import von gebrauchten Bildern', 'DE', 39);
-- RASPUNS 40 :
INSERT INTO raspuns (id_raspuns, valoareAdevar, id_intrebare)
VALUES (40, 0, 10);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (79, 'Eliminates direct calls to classless functions', 'EN', 40);
INSERT INTO traducere_raspuns (id_traducere, enunt, limba, id_raspuns)
VALUES (80, 'Beseitigt direkte Anrufe zu klassenlosen Funktionen', 'DE', 40);




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




