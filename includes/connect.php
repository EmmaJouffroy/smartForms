<?php
try {
$BDD = new PDO(
  "mysql:host=localhost;dbname=SmartForms;charset=utf8",
  "evaemmaprojetweb",
  "smartformsbdd",
  array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
} catch (Exception $e)
{
die('Erreur fatale : '.$e->getMessage());
}
?>
