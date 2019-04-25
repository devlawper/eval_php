<?php
session_start();
require "../database.php";
$titre = '';
$desc='';
$image='';
$publie='';
if(isset($_POST['titre'])){
	$titre=$_POST['titre'];
	$desc=$_POST['desc'];
	$photo_chargee = htmlspecialchars($_FILES['image']['name']);
	$image = move_uploaded_file($_FILES['image']['tmp_name'], "../img/".basename($photo_chargee));
	$publie=$_POST['publie'];

	$query=$bdd->prepare(
		"INSERT INTO articles(titre, description, image,date_creation, publie)
		 VALUES(?,?,?,NOW(),?)");
    $query->execute(array($titre,$desc,$photo_chargee, $publie));
    header("location:gestion_article.php");
 }
 include "phtml/modif_ajout.phtml";
