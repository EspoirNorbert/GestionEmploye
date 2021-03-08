<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modele.Employer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suppression d'un employer</title>
</head>
<body>
		<form>
		<h3 class="text-center">Supprimer un employe</h3>
			<div>
				<input type="text" name="q"  placeholder="Supprimer par matricule">
				<button type="submit" name="supprimer" value="supprimer">Supprimer</button>
			</div>
		</form>
	<div class="text-center">  
	<%  
	if(request.getParameter("supprimer")!= null && request.getParameter("supprimer").equals("supprimer")) {
       try{
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_rappel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		   String requette2 = "Delete from employer where matricule  like'%"+ request.getParameter("q") + "%'";
		   Statement st2 = con2.createStatement();
		   st2.executeUpdate(requette2);
		   con2.close(); 
		   out.print("Employé bien supprimé"); 
		   %>
		   <%@include file="afficheEmployer.jsp" %>
		   <%    
	   }
       catch(Exception e){
 	 	  out.print(e.getMessage());
 	 	  e.printStackTrace();
 	   }
	 }
	 %>  
	</div>
</body>
</html>