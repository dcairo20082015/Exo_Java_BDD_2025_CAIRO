<%@ page import="java.util.*, java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    
<%
class Task {
    private String title;
    private String description;
    private LocalDate dueDate; // --- Variable de type date
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

List<Task> lisTaches = (List<Task>) session.getAttribute("lisTaches");

if (listeTaches == null) {
    listeTaches = new ArrayList<>();
    session.setAttribute("listeTaches", listeTaches);
}


    // --- Ajout d'une tâche ---
    String titre = request.getParameter("titre");
    String description = request.getParameter("description");
    String dateStr = request.getParameter("date");


 if (titre != null && description != null && dateStr != null && !titre.isEmpty()) {
        Task nouvelle = new Task(titre, description, LocalDate.parse(dateStr));
        listeTaches.add(nouvelle);
        session.setAttribute("listeTaches", listeTaches);
    }

   // --- Suppression d'une tâche ---
    String indexSupp = request.getParameter("supprimer");
    if (indexSupp != null) {
        int index = Integer.parseInt(indexSupp);
        if (index >= 0 && index < listeTaches.size()) {
            listeTaches.remove(index);
        }
        session.setAttribute("listeTaches", listeTaches);
    }

    // --- Marquer comme terminée ---
    String indexTerminer = request.getParameter("terminer");
    if (indexTerminer != null) {
        int index = Integer.parseInt(indexTerminer);
        if (index >= 0 && index < listeTaches.size()) {
            listeTaches.get(index).setCompleted(true);
        }
        session.setAttribute("listeTaches", listeTaches);
    }
%>

<html>
<head>
    <title>Mini Gestionnaire de Tâches</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            margin: 40px;
        }
        h1 { color: #333; }
        form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            width: 400px;
        }
        input, textarea {
            width: 100%;
            margin: 6px 0;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type=submit] {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #0056b3;
        }
        table {
width: 90%;
            margin-top: 30px;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th { background-color: #007BFF; color: white; }
        .done { color: green; font-weight: bold; }
    </style>
</head>
<body>

<h1>Mini Gestionnaire de Tâches</h1>

<form action="TaaskManager2025.jsp" method="post">
    <label>Titre :</label>
    <input type="text" name="titre" required>

    <label>Description :</label>
    <textarea name="description" required></textarea>

    <label>Date d’échéance :</label>
    <input type="date" name="date" required>

    <input type="submit" value="Ajouter la tâche">
</form>

<%
    if (!listeTaches.isEmpty()) {
%>
    <h2>Liste des tâches</h2>
    <table>
        <tr>
            <th>Titre</th>
            <th>Description</th>
            <th>Date d’échéance</th>
            <th>Statut</th>
            <th>Actions</th>
        </tr>
        <%
            for (int i = 0; i < listeTaches.size(); i++) {
                Task t = listeTaches.get(i);
        %>
        <tr>
            <td><%= t.getTitle() %></td>
            <td><%= t.getDescription() %></td>
            <td><%= t.getDueDate() %></td>
            <td class="<%= t.isCompleted() ? "done" : "" %>">
                <%= t.isCompleted() ? "Done" : "On-going" %>
            </td>
            <td>
                <form method="post" style="display:inline;">
                    <input type="hidden" name="terminer" value="<%= i %>">
                    <input type="submit" value="Terminer">
                </form>
                <form method="post" style="display:inline;">
                    <input type="hidden" name="supprimer" value="<%= i %>">
                    <input type="submit" value="Supprimer">
                </form>
            </td>
        </tr>
        <% } %>
    </table>
<%
   } else {
%>
    <p>Aucune tâche enregistrée.</p>
<%
    }
%>

</body>
</html>

