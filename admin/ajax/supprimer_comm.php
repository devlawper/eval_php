<?php

require "../../database.php";

$id=$_POST['id'];

$query=$bdd->prepare(
  "DELETE FROM commentaires
  WHERE id=?");
$query->execute(array($id));

$query=$bdd->prepare(
	"UPDATE comm_supprime
	SET compteur= compteur + 1");
	$query->execute();

  echo json_encode($id);
