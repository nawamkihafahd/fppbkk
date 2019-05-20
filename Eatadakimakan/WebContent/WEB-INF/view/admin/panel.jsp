<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Eatadakimakan Admin Panel</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">

</head>
<body class="own-texture-bg">

<div class="container">

	<div class="row h-50">
	
	
		<div class="col-lg-3 my-auto"></div>
		
		<div class="col-lg-6 h-75 mt-5">
		<input id= "verticalButton" type="button" value="Manage Restaurant"
				   onclick="window.location.href='managerestaurant'; return false;"
				   class="btn btn-primary btn-block"
  		/>
  		<input id= "verticalButton" type="button" value="Manage Tag"
				   onclick="window.location.href='managetag'; return false;"
				   class="btn btn-primary btn-block"
  		/>
<!-- 			<button href="managerestaurant" type="button" class="btn btn-primary btn-block" >Manage Restaurant</button> -->
<!-- 			<br> -->
<!-- 			<button href="managetag" type="button" class="btn btn-primary btn-block" >Manage Tags</button> -->
		</div>	
		<div class="col-lg-3"></div>
	</div>

</div>
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>