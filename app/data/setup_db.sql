-- INITIALISATION DE LA DB
BEGIN;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS question, answer, result, question_has_answer;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE question (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL
);

CREATE TABLE answer (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    answer_text TEXT NOT NULL,
    answer_value INTEGER NOT NULL
);

CREATE TABLE question_has_answer (
    question_id INTEGER NOT NULL,
    FOREIGN KEY (question_id) REFERENCES question (id) ON DELETE CASCADE,
    answer_id INTEGER NOT NULL,
    FOREIGN KEY (answer_id) REFERENCES answer (id) ON DELETE CASCADE
);

CREATE TABLE result (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    score INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

COMMIT;

-- IMPORT DES DONNEES
BEGIN;

INSERT INTO question(question_text) VALUES
('J’ai souvent réussi à un test ou un une tâche, même si j’avais peur de ne pas réussir avant de commencer.'),
('Je peux donner l’impression que je suis plus compétent(e) qu’en réalité.'),
('J’évite, si possible, les évaluations et je crains que les autres m’évaluent.'),
('Quand les gens me félicitent pour quelque chose que j’aurais accompli, j’ai peur de ne pas être capable de rester à la hauteur de leurs attentes, la prochaine fois.'),
('Il m’arrive de penser que j’ai obtenu ma position actuelle ou ma réussite actuelle parce que je me trouvais au bon endroit au bon moment ou parce que j’ai rencontré les bonnes personnes.'),
('J’ai peur que les gens qui sont importants pour moi découvrent que je ne suis pas aussi compétent(e) que ce qu’ils pensent.'),
('Je me souviens plus facilement des moments où je n’ai pas été le/la meilleure par rapport à ceux où j’ai vraiment réussi.'),
('Je réussis rarement un projet ou une tâche aussi bien que ce que j’aurais voulu.'),
('J’ai l’impression ou je crois que les réussites dans ma vie ou dans mon job sont dû à une erreur.'),
('Il m’est difficile d’accepter les compliments ou félicitations qui concernent mon intelligence ou mes accomplissements.'),
('Je pense que mes succès sont dus à une sorte de chance.'),
('Je suis déçu(e) de mes accomplissements actuels et je pense que j’aurais pu faire plus.'),
('Je suis effrayé(e) que les gens découvrent mon manque de connaissances et de compétences.'),
('Lors d’une nouvelle mission ou tâche, j’ai peur d’échouer alors que je j’ai tendance à réussir ce que j’entreprends.'),
('Quand je réussi quelque chose et que je reçois de la reconnaissance pour ce que j’ai accompli, j’ai des doutes quant à mes capacités à réussir à nouveau.'),
('Si je reçois des compliments et de la reconnaissance pour ce que j’ai accompli, j’ai tendance à minimiser l’importance de ce que j’ai fait.'),
('Je compare mes capacités à celles des autres et je pense qu’ils sont, peut-être, plus intelligents que moi.'),
('Je m’inquiète de ne pas réussir un projet ou une évaluation, alors que les gens qui m’entourent se montrent très confiants sur le fait que je réussisse.'),
('Si je dois être promu(e) ou que je dois recevoir une marque de reconnaissance de quelque sorte, j’hésite à en parler aux autres jusqu’à temps que ce soit certain.'),
('Je me sens mal et découragé(e) si je ne suis pas le/la « meilleur(e) » ou au minimum « remarquable » dans les situations de compétitions.');

INSERT INTO answer(answer_text, answer_value) VALUES
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5);

INSERT INTO question_has_answer(question_id, answer_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5);

COMMIT;
