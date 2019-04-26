<?php
require "../../database.php";

$id=$_GET['id'];

// *** Modif valeur de publication dans la base de donnée ***
$query=$bdd->prepare(
	"UPDATE articles
	SET publie=?
	WHERE id=?");
		$query->execute(array('1', $id));
		header('location:../gestion_article.php');
