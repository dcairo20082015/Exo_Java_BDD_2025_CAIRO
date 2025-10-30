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
    <p>Saisir la description de la tâche: <input type="text" id="inputDescr" name="taskDescription"> </p>
    <input type="submit" value="Enregistrer">
</form>



<%-- Récupération des valeurs --%>
    <% String Description = request.getParameter("taskDescription"); %>
    <% String Title = request.getParameter("valeur"); %>


<% 
    class MyClass {
        String nameTache,description;
        String[][] tableau = new String[500][2];
        int i = 0,j =0;

        public MyClass(String name,String _description) {
            nameTache = name;
            description = _description; 
            tableau [i][0]=name;
            tableau [i][1]=description;
            i++;
            j++;

        }

public void afficherTaches (JspWriter out) throws java.io.IOException {
    for (int k=0;k<i;k++)
    {
    out.println("tâche : " + tableau [k][0] +"<br>");
    }
  }

 }
%>

<%
 if (Title != null && !Title.isEmpty()) {
        MyClass tache = new MyClass(Title,Description);
tache.afficherTaches(out);
    }
%>




</body>
</html>
