<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>TaskManager2000</title>
</head>
<body bgcolor=white>
<h1>Saisir une tache</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nom d'une tache : </label>
    <input type="text" id="inputValeur" name="valeur">
    <label for="inputDescr">Saisir le nom d'une tache : </label>
    <p>Saisir la description de la tâche: <input type="text" id="inputDescr" name="taskDescription"> </p>
    <input type="submit" value="Enregistrer">
</form>

<%! 
    class MyClass {
        String nameTache,description;

        public MyClass(String name,String _description) {
            nameTache = name;
            description = _description;    
        }
    }
%>

<%
    String valeur = request.getParameter("valeur");

    if (valeur != null && !valeur.isEmpty()) {
        MyClass tache = new MyClass(valeur,taskDescription);
%>
        <p>Nom de la tâche : <%= tache.nameTache %></p>
<%
    }
%>

</body>
</html>
