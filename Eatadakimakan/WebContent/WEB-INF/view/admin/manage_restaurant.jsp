<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Manage Restaurant</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">

</head>
<body>
<div class="container">
  <h2>Manage Restaurant</h2>
  <p>Manage Your Restaurant</p> 
  <input type="button" value="Add Restaurant"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="btn btn-primary btn-lg"
  />          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nama Restoran</th>
        <th>Daerah restoran</th>
        <th>Alamat Restoran</th>
        <th>Minimal Budget</th>
        <th>Maksimal Budget</th>
        <th>Tags</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempResto" items="${restoku}">
	<!-- construct an "update" link with customer id -->
	<c:url var="editLink" value="/admin/editrestaurant">
		<c:param name="restoranId" value="${tempResto.id}" />
	</c:url>
	
	<c:url var="manageMenuLink" value="/admin/managemenu">
		<c:param name="restoranId" value="${tempResto.id}" />
	</c:url>					

<!-- 					construct an "delete" link with customer id -->
	<c:url var="deleteLink" value="/admin/deleterestaurant">
		<c:param name="restoranId" value="${tempResto.id}" />
	</c:url>					
	
	

      <tr>
        <td>${tempResto.id}</td>
        <td>${tempResto.restoNama}</td>
        <td>${tempResto.restoDaerah}</td>
        <td>${tempResto.restoAlamat}</td>
        <td>${tempResto.restoBudgetMin}</td>
        <td>${tempResto.restoBudgetMax}</td>
        <td>
        	<c:forEach var="tempTag" items="${tempResto.tags}">
        	${tempTag.tagNama },<br>
        	</c:forEach>
        </td>
        <td>
			<a href="${updateLink}">Update</a>
			|
			<a href="${manageMenuLink}">Manage Menu</a>
			|
			<a href="${deleteLink}"
			   onclick="if (!(confirm('Are you sure you want to delete this restaurant?'))) return false">Delete</a>
		</td>
      </tr>
    </c:forEach>
      
    </tbody>
  </table>
</div>

<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>