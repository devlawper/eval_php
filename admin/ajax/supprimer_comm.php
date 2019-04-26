<?php

require "../../database.php";

$id=$_GET['id'];

$query=$bdd->prepare(
  "DELETE FROM commentaires
  WHERE id=?");
$query->execute(array($id));

$query=$bdd->prepare(
	"UPDATE comm_supprime
	SET compteur= compteur + 1");
	$query->execute();
header('location:../gestion_comm.php');
