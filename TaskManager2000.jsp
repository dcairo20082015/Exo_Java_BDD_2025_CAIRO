<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>

<html>
<head>
<title>TaskManager2000</title>
</head>
<body bgcolor=white>
<h1>Saisir une tache</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nom d'une tache : </label>
    <input type="text" id="inputValeur" name="valeur">
    <p>Saisir la description de la tâche: <input type="text" id="inputDescr" name="taskDescription"> </p>
    <input type="submit" value="Enregistrer">
</form>



<%-- Récupération des valeurs --%>
    <% String Description = request.getParameter("taskDescription"); %>
    <% String Title = request.getParameter("valeur"); %>


<% 
    class Tache {
        public String nameTache,description;

        public Tache(String name,String _description) {
            nameTache = name;
            description = _description; 
        }

 }
%>

<%
List<Tache> taches = (List<Tache>) session.getAttribute("taches");

if (taches == null) {
    taches = new ArrayList<>();
}

String nom = request.getParameter("nameTache");
String description = request.getParameter("description");

if (nom != null && description != null) {
    taches.add(new Tache(nom, description));
    session.setAttribute("taches", taches);
}

%>

<h3>Liste des tâches :</h3>

<%

for (Tache t : taches) {
%>
    <%= t.nameTache + " " + t.description %>
<%
}
%>



</body>
</html>
