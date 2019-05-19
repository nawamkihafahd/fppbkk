<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resto Here</title>
</head>
<body>
<h1>${restoku.restoNama} 
</h1>
${restoku.restoDaerah} <br>
${restoku.restoAlamat}<br>

<c:forEach var="tempTag" items="${tagku}"> 
${tempTag.tagNama}<br>
</c:forEach>

<c:forEach var="tempMenu" items="${menuku}"> 
${tempMenu.menuNama}<br>
${tempMenu.menuHarga}<br>
</c:forEach>

				

</body>
</html>