<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Eatadakimakan Add/Edit Menu</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">
  
  <link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

</head>
<body class="own-custom-res-bg">

<div class="container mt-5">
	<div class="card">
      <div class="card-header"> 
      </div>
      <div class="card-body">
 	<c:url var="saveMenu" value="/admin/saveMenu">
		<c:param name="restoID" value="${restoID}" />
	</c:url>
	
	<c:url var="backMenu" value="/admin/managemenu">
		<c:param name="restoranID" value="${restoID}" />
	</c:url>
	
	<table>
	<tbody>
	<form:form action="${saveMenu }" modelAttribute="menuku" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			<tr>
				<td><label>Nama Menu:</label></td>
				<td><form:input path="menuNama" /></td>
			</tr>
			<tr>
			<td>	<label>Harga:</label></td>
			<td>	<form:input path="menuHarga" /></td>
			</tr>
			<tr>
				<td><label>Image Path:</label></td>
				<td><form:input path="menuImagePath" /></td>
			</tr>
			<tr>
			<td><input type="submit" value="Save" class="save" />	</td>
			</tr>
		</form:form>
	
	
	</tbody>
	</table>
		
<input type="button" value="Back to Menu List"
				   onclick="window.location.href='${backMenu}'; return false;"
				   class="btn btn-primary btn-lg"
 		 />		
		
		</div>
		</div>
		</div>
		
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>