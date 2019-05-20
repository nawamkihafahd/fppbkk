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

  <title>Manage Tag</title>

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
     <h2> Manage Tag </h2>
  <p>Manage Your Tag</p> 
      </div>
      <div class="card-body">
  
  
  <input type="button" value="Add Tag"
				   onclick="window.location.href='showFormForAddTag'; return false;"
				   class="btn btn-primary btn-lg"
  />          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nama Tag</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempTag" items="${tagku}">
	<!-- construct an "update" link with customer id -->
			

<!-- 					construct an "delete" link with customer id -->
	<c:url var="deleteLink" value="/admin/deleteTag">
		<c:param name="tagID" value="${tempTag.id}" />
	</c:url>					
	
	

      <tr>
        <td>${tempTag.id}</td>
        <td>${tempTag.tagNama}</td>
        <td>
			<a href="${deleteLink}"
			   onclick="if (!(confirm('Are you sure you want to delete this tag?'))) return false">Delete</a>
		</td>
      </tr>
    </c:forEach>
      
    </tbody>
  </table>
  <br>
  <input type="button" value="Back to Panel"
				   onclick="window.location.href='panel'; return false;"
				   class="btn btn-primary btn-lg"
 		 />
  </div>
  </div>
</div>

<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>