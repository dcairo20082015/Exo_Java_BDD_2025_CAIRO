<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
<title>TaskManager2000</title>
</head>
<body bgcolor=white>

<%-- Récupération des valeurs --%>
    <% String Description = request.getParameter("taskDescription"); %>
    <% String Title = request.getParameter("valeur"); %>

<%
class Task {
    private String nom;
    private String description;
    private localDate dueDate; // --- Variable de type date
    private boolean completed;


    public Task(String title, String description, LocalDate dueDate) {
            this.title = title;
            this.description = description;
            this.dueDate = dueDate;
            this.completed = false;
    }

        public String getTitle() { return title; }
        public String getDescription() { return description; }
        public LocalDate getDueDate() { return dueDate; }
        public boolean isCompleted() { return completed; }
        public void setCompleted(boolean completed) { this.completed = completed; }
}
%>

<%
List<Task> lisTaches = (List<Task>) session.getAttribute("lisTaches");

if (listeTaches == null) {
    listeTaches = new ArrayList<>();
    session.setAttribute("listeTaches", listeTaches);
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
