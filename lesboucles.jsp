<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j <= cpt; j++) { %>
       <%= "*" %>
    <% } %>
</br>
<% } %>
</br>


<!-- </br>*****</br>*****</br>*****</br>*****</p>  -->


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<!-- <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p> -->

<%int cpt2 = 1; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j <= cpt2; j++) { %>
       <%= "*" %>
    <% } %>
 <% cpt2=cpt2+1; %>
</br>
<% } %>
</br>


<h2>Exercice 3 : Triangle rectangle inversé</h2>
<!-- <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p> -->
<%int cpt3 = cpt; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j <= cpt3; j++) { %>
       <%= "*" %>
    <% } %>
 <% cpt3=cpt3-1; %>
</br>
<% } %>
</br>

<!--<p>*****</br>****</br>***</br>**</br>*</p> -->

<h2>Exercice 4 : Triangle rectangle 2</h2>
<!-- <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>  -->
<!-- <p>Exemple si l'utilisateur saisie le valeur 5</p> -->

<%int cpt4 = (cpt-1)*2; %>
<%int cpt7 = 1; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j < cpt4; j++) { %>
       &nbsp;
    <% } %>
      <% for (int j = 1; j <= cpt7; j++) { %>
       <%= "*" %>
    <% } %>
<% cpt4=cpt4-2; %>
<% cpt7=cpt7+1; %>
</br>
<% } %>
</br>

<!-- <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p> -->

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>

<%int cpt5 = cpt-1; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j <= cpt5; j++) { %>
       &nbsp;
    <% } %>
      <% for (int j = 1; j <= cpt-cpt5; j++) { %>
       <%= "*" %>
    <% } %>
<% cpt5=cpt5-1; %>
</br>
<% } %>
</br>


</br>

<!-- <p>Exemple si l'utilisateur saisie le valeur 5</p>-->
<!-- <p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p> -->

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>


<!-- Triangle ========================= -->
<%int cpt14 = (cpt-1)*2; %>
<%int cpt17 = 1; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j < cpt14; j++) { %>
       &nbsp;
    <% } %>
      <% for (int j = 1; j <= cpt17; j++) { %>
       <%= "*" %>
    <% } %>
<% cpt14=cpt14-2; %>
<% cpt17=cpt17+1; %>
</br>
<% } %>
</br>
<!-- ================================== -->

<!-- Triangle inversé =================-->
<%int cpt24 = 0; %>
<%int cpt27 = cpt; %>
 <% for (int i = 1; i <= cpt; i++) { %>
      <% for (int j = 1; j < cpt24; j++) { %>
       &nbsp;
    <% } %>
      <% for (int j = 1; j <= cpt27; j++) { %>
       <%= "*" %>
    <% } %>
<% cpt24=cpt24+2; %>
<% cpt27=cpt27-1; %>
</br>
<% } %>
</br>
<!-- =================================-->

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
