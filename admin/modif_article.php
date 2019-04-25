<?php
require "../database.php";
$id= $_GET['id'];

 $query=$bdd->prepare("SELECT id, titre, description, image, publie FROM articles WHERE id=?  ");
 $query->execute(array($id));
 $article=$query->fetch();
 var_dump($article);

$titre=$article['titre'];
$desc=$article['description'];
$publie=$article['publie'];
$image=$article['image'];

 if(isset($_POST['titre'])){
	$titre=$_POST['titre'];
	$desc=$_POST['description'];
	$publie=$_POST['publie'];
	$image=$_POST['image'];
	$query=$bdd->prepare("
			UPDATE articles SET titre=?, description=?, image=? date_article=?, publie=? 
			WHERE id=?");
		$query->execute(array($titre,$desc,$image, NOW(),$publie,$id));
	}




include "modif_ajout.phtml";