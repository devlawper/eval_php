<?php
require "../../database.php";

$id = $_POST['id'];
$text = $_POST['text'];
$idSpan = $_POST['idSpan'];

// *** Modif valeur de publication dans la base de donnée ***
$query=$bdd->prepare(
	"UPDATE commentaires
	SET publie=?
	WHERE id=?");
$query->execute(array('1', $id));

// *** Incremente le commentaires dans la base de donnée ***
$query = $bdd -> prepare(
  "UPDATE articles
	INNER JOIN commentaires
	ON articles.id=commentaires.id_article
  SET nb_comm = nb_comm + 1
  WHERE commentaires.id = ?");
$query -> execute(array($id));

echo json_encode($idSpan);
