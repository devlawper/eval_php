<?php

require "../../database.php";

$id=$_GET['id'];

// *** Suppression de l'article en base de donnée ***
$query=$bdd->prepare(
  "DELETE FROM articles
  WHERE id=?");
$query->execute(array($id));
header('location:../gestion_article.php');
