<?php

require "database.php";

// connexion a ma base de données
session_start();
	if(isset($_POST['login'])){
		$login=htmlspecialchars($_POST['login']);
		$mdps=htmlspecialchars($_POST['password']);
		if($login=='tata'&& $mdps=='minet'){
			$_SESSION['admin'] = 'tata';
			header('location:admin/tableau_de_bord.php');
		}
		else{
			session_destroy();
		}
	}

include "header.php";
include "phtml/admin.phtml";
