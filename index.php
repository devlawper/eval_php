<?php
require "database.php";

// *** Selection des 3 derniers articles mis en évidence ***
$query = $bdd -> prepare(
  "SELECT id, titre, description, image, date_creation, nb_comm
  FROM articles
  WHERE publie = 1
  ORDER BY date_creation DESC
  LIMIT 3");
$query -> execute();
$promus = $query -> fetchAll();

// *** Selection des 20 derniers articles dans l'encart ***
$query = $bdd -> prepare(
  "SELECT id, titre, date_creation
  FROM articles
  WHERE publie = 1
  ORDER BY date_creation DESC
  LIMIT 20");
$query -> execute();
$articles = $query -> fetchAll();

// *** Selection des 5 derniers commentaires dans l'encart ***
$query = $bdd -> prepare(
  "SELECT commentaire, date
  FROM commentaires
  WHERE publie = 1
  ORDER BY date DESC
  LIMIT 5");
$query -> execute();
$commentaires = $query -> fetchAll();

include "header.php";
include "phtml/index.phtml";
include "footer.php";
