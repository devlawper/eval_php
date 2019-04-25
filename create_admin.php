<?php
$login='admin';
$password='toto';

include "database.php";
$query=$bdd->prepare(
  'INSERT INTO admin (login,password)
  VALUES (?,?)');
$query->execute(array($login,password_hash($password, PASSWORD_DEFAULT)));
