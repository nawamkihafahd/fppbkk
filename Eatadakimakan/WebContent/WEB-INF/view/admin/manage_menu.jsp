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
  
  <link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

</head>
<body class="own-custom-res-bg">
<div class="container mt-5">
	<div class="card">
      <div class="card-header"> 
      <h2> ${restoku.restoNama} </h2>
  <p>Manage Your Menu</p> 
      </div>
      <div class="card-body">
  
  
  <c:url var="addMenuLink" value="/admin/showFormForAddMenu">
		<c:param name="restoID" value="${restoku.id}" />
	</c:url>
  
  <input type="button" value="Add Menu"
				   onclick="window.location.href='${addMenuLink}'; return false;"
				   class="btn btn-primary btn-lg"
  />
  <br>
  <br>          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nama Menu</th>
        <th>Harga</th>
        <th>Image Path</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempMenu" items="${menuku}">
	<!-- construct an "update" link with customer id -->
	<c:url var="editLink" value="/admin/showFormForEditMenu">
		<c:param name="menuID" value="${tempMenu.id}" />
		<c:param name="restoID" value="${restoku.id}" />
	</c:url>
	
<!-- 					construct an "delete" link with customer id -->
	<c:url var="deleteLink" value="/admin/deleteMenu">
		<c:param name="menuID" value="${tempMenu.id}" />
		<c:param name="restoID" value="${restoku.id}" />
	</c:url>					
	
	

      <tr>
        <td>${tempMenu.id}</td>
        <td>${tempMenu.menuNama}</td>
        <td>${tempMenu.menuHarga}</td>
        <td>${tempMenu.menuImagePath}</td>
        <td>
			<a href="${editLink}">Edit</a>
			|
			<a href="${deleteLink}"
			   onclick="if (!(confirm('Are you sure you want to delete this menu?'))) return false">Delete</a>
		</td>
      </tr>
    </c:forEach>
      
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