<?php
require "../../database.php";

$query=$bdd->prepare(
	"TRUNCATE TABLE nb_visiteurs");
		$query->execute();
		header('location:../tableau_de_bord.php');
