<?php

require "../database.php";

$nom = $_POST['nom'];
$email = $_POST['email'];
$comm = $_POST['comm'];
$id = $_POST['id'];

$query = $bdd -> prepare(
  'INSERT INTO commentaires (pseudo, email, commentaire, id_article, date)
  VALUES (?,?,?,?,NOW())');
$query -> execute(array($nom, $email, $comm, $id));

// *** Incremente le commentaires dans la base de donnée ***
$query = $bdd -> prepare(
  "UPDATE articles
  SET nb_comm = nb_comm + 1
  WHERE id = ?
  ");
$query -> execute(array($id));
$promus = $query -> fetchAll();

?>
