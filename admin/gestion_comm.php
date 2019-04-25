<?php
session_start();
require "../database.php";

$query=$bdd->prepare(
  "SELECT commentaires.id, pseudo, email, commentaire, id_article, date, commentaires.publie, titre
  FROM commentaires
  INNER JOIN articles
  ON commentaires.id_article=articles.id");
 $query->execute();
 $commentaires=$query->fetchAll();



include "header.php";
include "phtml/gestion_comm.phtml";
