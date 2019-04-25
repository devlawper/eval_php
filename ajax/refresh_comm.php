<?php
require "../database.php";
// *** Selection des 5 derniers commentaires dans l'encart ***
$query = $bdd -> prepare(
  "SELECT commentaire, date
  FROM commentaires
  WHERE publie = 1
  ORDER BY date DESC
  LIMIT 5");
$query -> execute();
$commentaires = $query -> fetchAll();
echo json_encode($commentaires);
 ?>
