﻿INSERT INTO "Usuario" VALUES (1, 8000, 'rodriguinho@globo.com', 'Rodrigo');
INSERT INTO "Usuario" VALUES (2, 5500, 'fernandinho@gmail.com', 'Fernando');
INSERT INTO "Usuario" VALUES (3, 4751, 'aninha@hotmail.com', 'Aninha');

INSERT INTO "Pergunta" VALUES (1, 'Como dobra um papel 12 vezes?', 'Blablabla',25,1);
INSERT INTO "Pergunta" VALUES (2, 'Como se compila um programa em C?', 'Blablabla',30,1);
INSERT INTO "Pergunta" VALUES (3, 'Quanto é 1+1?', 'Blablabla',23,2);
INSERT INTO "Pergunta" VALUES (4, 'A terra é plana?', 'Blablabla',10,3);

SELECT * FROM "Pergunta" AS p
JOIN "Usuario" AS u ON 'p.usuarioID' = 'u.usuarioID';