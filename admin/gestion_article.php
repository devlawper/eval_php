<?php
session_start();
require "../database.php";

// *** Afficher tous les articles ***
$query=$bdd->prepare(
	"SELECT id,titre, description, image, date_creation, publie, nb_visites, nb_comm
	FROM articles");
 $query->execute(array());
 $articles=$query->fetchAll();

// *** Définition de l'affichage local pour la date ***
setlocale(LC_ALL, 'fr_FR.UTF8', 'fr_FR','fr','fr','fra','fr_FR@euro');

include "header.php";
include "phtml/gestion_article.phtml";
