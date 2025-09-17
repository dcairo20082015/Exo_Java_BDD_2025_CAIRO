<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   

<h2>Exercice 1 : Comparaison 1</h2>

<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur11">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur12">
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="valeur13">
    <p><input type="submit" value="Afficher">
</form>



<%-- Récupération des valeurs --%>
    <% String valeur11 = request.getParameter("valeur11"); %>
    <% String valeur12 = request.getParameter("valeur12"); %>
    <% String valeur13 = request.getParameter("valeur13"); %>


<% if (valeur11 != null && valeur12 != null && valeur13) { %>
<%-- Conversion des valeurs en entiers pour la comparaison --%>
    <% int intValeur11 = Integer.parseInt(valeur11); %>
    <% int intValeur12 = Integer.parseInt(valeur12); %>
    <% int intValeur13 = Integer.parseInt(valeur13); %>
<% } %>

    <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur13 > intValeur11 && intValeur12 > intValeur13 ) { %>
            <p>La valeur </p>
<%= valeur13 %>
 <p> est comprise entre </p>
<%= valeur11 %>
 <p> et </p>
<%= valeur12 %>
        <% } %>


<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 % 2 != 0) { %>
            <p>La Valeur 1 est impaire</p>
        <% } else { %>
            <p>Le nombre est paire</p>
        <% } %>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
