<?php
session_start();
require "../database.php";

$query = $bdd -> prepare(
  "SELECT COUNT(*) AS nb_visiteurs
  FROM nb_visiteurs");
$query -> execute();
$visites = $query -> fetch();
var_dump($visites);

include "header.php";
include "phtml/tableau_de_bord.phtml";
