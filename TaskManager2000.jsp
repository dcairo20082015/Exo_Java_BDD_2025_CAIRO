<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

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
    String nom;
    String description;

    public Tache(String nom, String description) {
        this.nom = nom;
        this.description = description;
    }
}
%>

<%
List<Tache> taches = (List<Tache>) session.getAttribute("taches");

if (taches == null) {
    taches = new ArrayList<>();
}

String nom = request.getParameter("nom");
String description = request.getParameter("description");

if (nom != null && description != null && !nom.isEmpty() && !description.isEmpty()) {
    taches.add(new Tache(nom, description));
    session.setAttribute("taches", taches);
}
%>

<h2>Ajouter une tâche</h2>
<form method="post">
    Nom : <input type="text" name="nom"><br>
    Description : <input type="text" name="description"><br>
    <input type="submit" value="Ajouter">
</form>

<hr>

<h2>Liste des tâches :</h2>

<%= "Nombre de tâches : " + taches.size() %><br>

<ul>
<%
if (!taches.isEmpty()) {
    for (Tache t : taches) {
%>
        <li><b><%= t.nom %></b> — <%= t.description %></li>
<%
    }
} else {
%>
    <li>Aucune tâche enregistrée.</li>
<%
}
%>
</ul>



</body>
</html>
