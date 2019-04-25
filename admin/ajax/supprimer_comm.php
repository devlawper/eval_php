<?php

require "../../database.php";

$id=$_GET['id'];

$query=$bdd->prepare(
  "DELETE FROM commentaires
  WHERE id=?");
$query->execute(array($id));
header('location:../gestion_comm.php');
