<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all Restoran</title>
</head>
<body>

<table>
				<tr>
					<th>Nama</th>
					<th>Daerah</th>
					<th>Alamat</th>
					<th>Budget Min</th>
					<th>Budget Max</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempResto" items="${resto}">
				
					
					<tr>
						<td> ${tempResto.restoNama} </td>
						<td> ${tempResto.restoDaerah} </td>
						<td> ${tempResto.restoAlamat} </td>
						<td> ${tempResto.restoBudgetMin} </td>
						<td> ${tempResto.restoBudgetMax} </td>						

						
					</tr>
				
				</c:forEach>
						
			</table>

</body>
</html>