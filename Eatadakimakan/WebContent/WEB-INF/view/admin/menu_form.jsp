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

  <title>Eatadakimakan Add Menu</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">

</head>
<body>

 	<c:url var="saveMenu" value="/admin/saveMenu">
		<c:param name="restoID" value="${restoID}" />
	</c:url>

<form:form action="${saveMenu }" modelAttribute="menuku" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			<div class="form-group">
				<label>Nama Menu:</label></td>
				<form:input path="menuNama" />
			</div>
			<div class="form-group">
				<label>Harga:</label></td>
				<form:input path="menuHarga" />
			</div>			
			<input type="submit" value="Save" class="save" />	
		
		</form:form>
		
		
		
		
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>