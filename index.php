<!DOCTYPE html>
<html>
  <head>
    <link href="http://fonts.googleapis.com/css?family=Fenix" rel="stylesheet" type="text/css">
    <link href= "/css/style.css" rel="stylesheet" type="text/css">
     <?php require( "vendor/cdnBootstrapLink.php" )?>
    <meta charset="utf-8">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <?php require("includes/connect.php") ?>
    <?php require("includes/navbar.php") ?>
<a href="images/logo.png"></a>
<h1>Bienvenue sur SmartForm's</h1>
<h3>Pour créer plus facilement vos formulaires</h3>
<ul>
  <li>Créez simplement vos formulaires</li>
  <li>Visualisez les résultats de vos campagnes</li>
  <li>Téléchargez ces résultats au format CSV</li>
</ul>
<h2>Inscription</h2><a href="pages/signin.php"> / Connexion</a>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">@mail</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mot de passe à nouveau</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="paper-toggle">
    <label for="droits">Expérimentateur</label>
  	<input type="checkbox" id="droits" name="droits" class="switch" />
  	<label for="droits">Utilisateur</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

  <footer>

  </footer>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<?php require("vendor/cdnBootstrapScript.php")  ?>
</html>
