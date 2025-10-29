<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,java.util.List" %>

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
public class MyClass {
        String nameTache,description;

        private static List<MyClass> instances = new ArrayList<>();
        
        public MyClass(String name,String _description) {
            this.nameTache = name;
            this.description = _description; 
            instances.add(this);
        }

        public static List<MyClass> getInstances(){
        return instances;
        }


    }
%>

<%
 if (Title != null && !Title.isEmpty()) {
        MyClass tache = new MyClass(Title,Description);
    }
%>

</body>
</html>
