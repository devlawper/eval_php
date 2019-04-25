<?php
require "../../database.php";
$id=$_POST['id'];
$query=$bdd->prepare("
		UPDATE commentaires 
		SET publie=1
		WHERE id=?");
		$query->execute(array($id));
	