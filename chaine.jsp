<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manipulation de chaînes</title>
</head>
<body>

<%
    // Déclaration de la chaîne de départ
    String bonjour = "salut la compagnie";

    // Conversion en majuscules
    String bonjourMajuscule = bonjour.toUpperCase();

    // Mise en majuscule de la première lettre seulement
    String bonjourPremiereMaj = bonjour.substring(0, 1).toUpperCase() + bonjour.substring(1);
%>

<h2>Résultat du traitement de la chaîne</h2>
<p><strong>Texte original :</strong> <%= bonjour %></p>
<p><strong>En MAJUSCULES :</strong> <%= bonjourMajuscule %></p>
<p><strong>Première lettre en majuscule uniquement :</strong> <%= bonjourPremiereMaj %></p>

</body>
</html>
