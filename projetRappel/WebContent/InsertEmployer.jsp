<%@page import="modele.Employer"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertion d'un employe</title>
</head>
<body>

  <%
  Employer employe = new Employer();
  employe.setMatricule(request.getParameter("matricule"));
  employe.setNom(request.getParameter("nom"));
  employe.setPrenom(request.getParameter("prenom"));
  employe.setService(request.getParameter("service"));
  employe.setFonction(request.getParameter("fonction"));
  employe.setSalaire(Double.parseDouble(request.getParameter("salaire")));

  try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_rappel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
  
  String requette = "insert into employer (matricule,nom,prenom,service,fonction,salaire) values('" + employe.getMatricule() + " ', '"
				       + employe.getNom() + "', '"
				      +  employe.getPrenom() + "', ' "
				      +  employe.getService() + "', '"
				      +  employe.getFonction()+ "', ' "
		              +  employe.getSalaire() + "')";
  Statement st = con.createStatement();
  int i = st.executeUpdate(requette);
  out.print("Employe ajouté avec success reussit");
  }catch(Exception e){
	  out.print(e.getMessage());
	  e.printStackTrace();
  }
  %>
  <a href="afficheEmployer.jsp">Voir la liste des employer</a>
</body>
</html>