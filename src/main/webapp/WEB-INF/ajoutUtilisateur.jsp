<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajout d'un utilisateur</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="inc/menu.jsp"/>
	<div class="container d-flex justify-content-center align-items-center vh-100">
		<div class="w-50">
			<h1 id="titre-principal" class="text-center my-4">Ajout d'un utilisateur</h1>
			<p id="statusMessage" class="${status ? 'alert alert-success' : 'alert alert-danger'}">${statusMessage}</p>
			<fieldset>
				<form method="post">
					<div class="form-group">
						<label for="nom">Nom</label>
						<input type="text" class="form-control" id="nom" name="nom" value="${utilisateur.nom}">
						<span class="text-danger">${erreurs.nom}</span>
					</div>
					<div class="form-group">
						<label for="prenom">Prenom</label>
						<input type="text" class="form-control" id="prenom" name="prenom" value="${utilisateur.prenom}">
						<span class="text-danger">${erreurs.prenom}</span>
					</div>
					<div class="form-group">
						<label for="login">Login</label>
						<input type="text" class="form-control" id="login" name="login" value="${utilisateur.login}">
						<span class="text-danger">${erreurs.login}</span>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" id="password" name="password">
						<span class="text-danger">${erreurs.password}</span>
					</div>
					<div class="form-group">
						<label for="passwordBis">Password Confirmation</label>
						<input type="password" class="form-control" id="passwordBis" name="passwordBis">
						<span class="text-danger">${erreurs.passwordBis}</span>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Ajouter</button>
					</div>
				</form>
			</fieldset>
		</div>
	</div>
        <div id="pied">Copyright DIC3 ESP &copy; Abdoulaye Ba 2024</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>