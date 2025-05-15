<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Exercice Chaine</title>
</head>
<body>
<%-- Déclaration de la méthode pour capitaliser la première lettre --%>
<%! 
  public String capitalizeFirst(String s) {
    if (s == null || s.isEmpty()) {
      return s;
    }
    return s.substring(0, 1).toUpperCase() + s.substring(1);
  }
%>

<%
// Déclaration de la chaîne
String bonjour = "salut la compagnie";

// Transformation en majuscules
String upper = bonjour.toUpperCase();

// Transformation avec seulement la 1re lettre en majuscule
String firstCap = capitalizeFirst(bonjour);
%>

<h2>Exercice de consolidation Java (JSP)</h2>
<p><strong>Message d’origine :</strong> <%= bonjour %></p>
<p><strong>En MAJUSCULES :</strong> <%= upper %></p>
<p><strong>Première lettre seulement en majuscule :</strong> <%= firstCap %></p>

</body>
</html>
