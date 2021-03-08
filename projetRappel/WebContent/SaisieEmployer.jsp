<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulaire ajout Employer</title>
</head>
<body>
	<form action="InsertEmployer.jsp">

		<h2 class="card-title text-center text-white">Ajout d'un Employer</h2>
		<div>
			<label>Matricule</label> 
			<input type="text"  name="matricule" required placeholder="Entrer le matricule">
		</div>
		<div>
			<label>Nom</label>
			<input type="text"  name="nom" required placeholder="Entrer le nom">
		</div>
		<div>
			<label>Prenom</label> 
			<input type="text"  name="prenom" required placeholder="Entrer le prenom">
		</div>
		<div>
			<label>Service</label>
			<input type="text" class="form-control form-control-lg" required name="service" placeholder="Entrer son service">
		</div>
		<div>
			<label>Fonction</label> 
			<input type="text" name="fonction" required placeholder="Entrer sa fonction">
		</div>
		<div>
			<label>Salaire</label> <input type="number" required name="salaire" placeholder="Entrer son salaire">
		</div>
		<div>
			<input type="submit"  value="Valider" name="valider">
			 <input type="reset"  value="Annuler" name="annuler">
		</div>
	</form>
</body>
</html>