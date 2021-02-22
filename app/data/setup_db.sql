-- INITIALISATION DE LA DB
BEGIN;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS question, answer, question_answer, test, test_answer, score, interpretation;
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

CREATE TABLE question_answer (
    question_id INTEGER NOT NULL,
    FOREIGN KEY (question_id) REFERENCES question (id) ON DELETE CASCADE,
    answer_id INTEGER NOT NULL,
    FOREIGN KEY (answer_id) REFERENCES answer (id) ON DELETE CASCADE
);

CREATE TABLE interpretation (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    interpretation_text TEXT NOT NULL
);

CREATE TABLE score (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    score_value INTEGER NOT NULL,
    interpretation_id INTEGER NOT NULL,
    FOREIGN KEY (interpretation_id) REFERENCES interpretation (id) ON DELETE CASCADE
);

CREATE TABLE test (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL DEFAULT NOW(),
    score_id INTEGER,
    FOREIGN KEY (score_id) REFERENCES score (id) ON DELETE CASCADE
);

CREATE TABLE test_answer (
    test_id INTEGER NOT NULL,
    FOREIGN KEY (test_id) REFERENCES test (id) ON DELETE CASCADE,
    answer_id INTEGER NOT NULL,
    FOREIGN KEY (answer_id) REFERENCES answer (id) ON DELETE CASCADE
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
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5),
('Pas du tout', 1),
('Rarement', 2),
('Parfois', 3),
('Souvent', 4),
('Tout le temps', 5);

INSERT INTO question_answer(question_id, answer_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(11, 51),
(11, 52),
(11, 53),
(11, 54),
(11, 55),
(12, 56),
(12, 57),
(12, 58),
(12, 59),
(12, 60),
(13, 61),
(13, 62),
(13, 63),
(13, 64),
(13, 65),
(14, 66),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(15, 71),
(15, 72),
(15, 73),
(15, 74),
(15, 75),
(16, 76),
(16, 77),
(16, 78),
(16, 79),
(16, 80),
(17, 81),
(17, 82),
(17, 83),
(17, 84),
(17, 85),
(18, 86),
(18, 87),
(18, 88),
(18, 89),
(18, 90),
(19, 91),
(19, 92),
(19, 93),
(19, 94),
(19, 95),
(20, 96),
(20, 97),
(20, 98),
(20, 99),
(20, 100);

INSERT INTO interpretation(interpretation_text) VALUES
('Vous vivez faiblement l’expérience du sentiment d’imposture.'),
('Vous vivez modérément l’expérience du sentiment d’imposture.'),
('Vous vivez fréquemment l’expérience de sentiment d’imposture.'),
('vous vivez intensément l’expérience du sentiment d’imposture.');

INSERT INTO score(score_value, interpretation_id) VALUES
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4);

COMMIT;
