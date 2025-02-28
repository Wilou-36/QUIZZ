--Table Utilisateur
CREATE TABLE Utilisateur (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(255) NOT NULL
);
 
-- Table Quiz
CREATE TABLE Quiz (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(255) NOT NULL,
    Difficulte VARCHAR(50) NOT NULL
);
 
-- Table Question
CREATE TABLE Question (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Intitule TEXT NOT NULL,
    Multiple BOOLEAN NOT NULL,
    id_Quizz int,
    id_Categorie int,
    id_Reponse int,
    foreign key(id_Quizz) references Quiz(ID),
    foreign key(id_Categorie) references Categorie(ID),
    foreign key(id_Reponse) references Reponse(ID)
);
 
-- Table Réponse
CREATE TABLE Reponse (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Intitule TEXT NOT NULL,
    BonneReponse BOOLEAN NOT NULL
);
 
-- Table Catégorie
CREATE TABLE Categorie (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Libelle VARCHAR(255) NOT NULL
);


--Partie du prof creation de base de donnée
CREATE TABLE quizz(
   id INT AUTO_INCREMENT,
   nom VARCHAR(64) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE question(
   id INT AUTO_INCREMENT,
   intitule VARCHAR(250) NOT NULL,
   difficulte INT NOT NULL DEFAULT 0,
   multiple TINYINT NOT NULL DEFAULT 0,
   PRIMARY KEY(id)
);

CREATE TABLE reponse(
   id INT AUTO_INCREMENT,
   intitule VARCHAR(100) NOT NULL,
   bonnereponse TINYINT NOT NULL DEFAULT 0,
   question_id INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(question_id) REFERENCES question(id)
);

CREATE TABLE categorie(
   id INT AUTO_INCREMENT,
   libelle VARCHAR(64) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE question_categorie(
   question_id INT NOT NULL,
   categorie_id INT NOT NULL,
   PRIMARY KEY(question_id, categorie_id),
   FOREIGN KEY(question_id) REFERENCES question(id),
   FOREIGN KEY(categorie_id) REFERENCES categorie(id)
);

CREATE TABLE quizz_question(
   quizz_id INT NOT NULL,
   question_id INT NOT NULL,
   PRIMARY KEY(quizz_id, question_id),
   FOREIGN KEY(quizz_id) REFERENCES quizz(id),
   FOREIGN KEY(question_id) REFERENCES question(id)
);