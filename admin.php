<?php

require "database.php";

// connexion a ma base de données
session_start();
	if(isset($_POST['login'])){
		$login=htmlspecialchars($_POST['login']);
		$mdps=htmlspecialchars($_POST['password']);
		if($login=='tata'&& $mdps=='minet'){
			$_SESSION['admin'] = 'tata';
		}
		else{
			session_destroy();
		}
	}

include "header.php";
include "admin/phtml/admin.phtml";
