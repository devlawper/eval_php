<?php
require "../database.php";

$query=$bdd->prepare("SELECT com.pseudo AS pseudo_comm, com.email AS email_comm, com.commentaire AS comment_comm, com.id_article AS id_art_comm, com.date AS date_comm, com.publie AS publie_comm FROM commentaires AS com");
 $query->execute();
 $article=$query->fetchAll();



include "header.php";
include "phtml/gestion_comm.phtml";
