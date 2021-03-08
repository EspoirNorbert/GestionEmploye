<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modele.Employer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listes des Employer</title>
</head>
<body>
   <h2>Liste des Employes</h2>
	<table border="1">
		<tr>
		    <th>Matricule</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Service</th>
			<th>Fonction</th>
			<th>Salaire</th>
		</tr>
		<% 
       try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_rappel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
	   String requette = "select * from employer order by id desc";
	   Statement st = con.createStatement();
	   ResultSet rs = st.executeQuery(requette);
	   while(rs.next()){
	   %>
		<tr>
			<td><%=  rs.getString("matricule") %></td>
			<td><%=  rs.getString("nom") %></td>
			<td><%=  rs.getString("prenom") %></td>
			<td><%=  rs.getString("service") %></td>
			<td><%=  rs.getString("fonction") %></td>
			<td><%=  rs.getString("salaire") %></td>
		<tr>
	  <%
	   }
	   con.close();
	   }catch(Exception e){
	 	  out.print(e.getMessage());
	 	  e.printStackTrace();
	   }
      %>
	</table>
		<a href="SaisieEmployer.jsp">Ajouter un employer</a>
		<a href="rechercherEmployer.jsp">Rechercher un employer</a>
		<a href="supprimerEmployer.jsp">Supprimer un employer</a>
</body>
</html>