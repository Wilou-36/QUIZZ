<?php
$password = 'Quizz';
$username = 'quizz2';
$servername = '192.168.56.111';
$dbname = 'Quizz';
$port= 3306;

$mysqli = new mysqli($servername, $username, $password, $dbname);

if ($mysqli->connect_error) 
{
    die('Erreur connexion'. $mysqli->connect_error);
}

//accueil.php




?>