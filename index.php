<?php require("includes/head.php")  ?>
<?php require("includes/navbar.php")  ?>
<a href="images/logo.png"></a>
<h1>Bienvenue sur SmartForm's</h1>
<h3>Pour créer plus facilement vos formulaires</h3>
<ul>
  <li>Créez simplement vos formulaires</li>
  <li>Visualisez les résultats de vos campagnes</li>
  <li>Téléchargez ces résultats au format CSV</li>
</ul>
<h2>Inscription</h2><a href="#"> / Connexion</a>
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
  	<input type="checkbox" id="wifi" name="wifi" class="switch" />
  	<label for="wifi">Wifi</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php require("includes/footer.php")  ?>
