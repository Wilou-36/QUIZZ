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
    Multiple BOOLEAN NOT NULL
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