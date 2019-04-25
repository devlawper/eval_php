<?php
require "../database.php";

$query=$bdd->prepare(
  "SELECT id, pseudo, email, commentaire, id_article, date, publie
  FROM commentaires");
 $query->execute();
 $commentaires=$query->fetchAll();



include "header.php";
include "phtml/gestion_comm.phtml";
