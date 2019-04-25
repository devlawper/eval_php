<?php
require "database.php";

// *** Selection de l'article demandé ***
$query = $bdd -> prepare(
  "SELECT id, titre, description, image, date_creation
  FROM articles
  WHERE id = ? && publie = 1");
$query -> execute(array($_GET['id']));
$article = $query -> fetch();

$query = $bdd -> prepare(
  "SELECT pseudo, commentaire, id_article, date
  FROM commentaires
  WHERE id_article = ? && publie = 1");
$query -> execute(array($_GET['id']));
$commentaires = $query -> fetchAll();

include "header.php";
include "phtml/article.phtml";
include "footer.php";

 ?>
