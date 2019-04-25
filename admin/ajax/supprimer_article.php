<?php

require "../../database.php";

$id=$_GET['id'];

$query=$bdd->prepare(
  "DELETE FROM articles
  WHERE id=?");
$query->execute(array($id));
header('location:../gestion_article.php');
