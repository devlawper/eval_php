<?php
session_start();
require "../database.php";
// afficher tous les articles


$query=$bdd->prepare(
	"SELECT id,titre, description, image, date_creation, publie, nb_visites, nb_comm
	FROM articles");
 $query->execute(array());
 $articles=$query->fetchAll();

include "header.php";
include "phtml/gestion_article.phtml";
