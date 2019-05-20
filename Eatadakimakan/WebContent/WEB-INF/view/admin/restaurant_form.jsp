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

  <title>Eatadakimakan Add Restaurant</title>

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
<table>
<tbody>
			

			<form:form action="saveResto" modelAttribute="restoku" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
			 
			<td><label>Nama Restoran:</label></td> 
			<td><form:input path="restoNama" /> </td>
			
			 <tr>
				<td><label>Daerah Restoran:</label></td> 
				<td><form:input path="restoDaerah" /></td>
			</tr>
			 <tr>
				<td><label>Alamat Restoran:</label></td> 
				<td><form:input path="restoAlamat" /></td>
		
			 </tr>
			 <tr>
				<td><label>Minimal Budget:</label></td> 
				<td><form:input path="restoBudgetMin" /></td>
				
			</tr>
			 <tr>
				<td><label>Maksimal Budget:</label></td> 
				<td><form:input path="restoBudgetMax" /></td>
			
			</tr>
			
			 <tr>
				<td><label>Image Path:</label></td> 
				<td><form:input path="restoImagePath" /></td>
			
			</tr>
			<tr>
			<td><input type="submit" value="Save" class="save" />	</td>
			</tr>
		</form:form>
		
</tbody>
</table>

		<input type="button" value="Back to Restaurant List"
				   onclick="window.location.href='managerestaurant'; return false;"
				   class="btn btn-primary btn-lg"
 		 />
 		 </div>
 		 </div>
</div>
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>