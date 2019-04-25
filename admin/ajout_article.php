<?php
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

	$query=$bdd->prepare("
		  INSERT INTO articles(titre, description, image,date_creation, publie) 
		  VALUES(?,?,?,NOW(),?)");
    $query->execute(array($titre,$desc,$image, $publie));
    var_dump($query->errorInfo());
 }
 include "modif_ajout.phtml";