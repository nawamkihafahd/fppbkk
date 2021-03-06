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

  <title>Eatadakimakan Search Result</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">
  
  <link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
</head>
<body class="own-custom-res-bg">


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
       <a class="navbar-brand" href="/Eatadakimakan">EATADAKIMAKAN</a> 
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/Eatadakimakan">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/Eatadakimakan/restoran/searchrestauranform">Search</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
	
	
	<div class="container mt-5">
	<div class="card">
      <div class="card-header">Hasil Cari Restoran</div>
      <div class="card-body">
      
      
      <div class = "row">
      <c:forEach var="tempResto" items="${resto}">
					
					<div class="col-lg-4 col-md-6 mb-4">
            		<div class="card h-100">
              			<a href="/"><img class="card-img-top" src="<c:url value="${tempResto.restoImagePath}"/>" alt=""></a>
              		<div class="card-body">
                		<h4 class="card-title">
                  			<a href="/Eatadakimakan/restoran/${tempResto.id}"class="font-bro	wn">${tempResto.restoNama}</a>
                		</h4>
                		<h5>${tempResto.restoBudgetMin}</h5>
              		</div>
              		<div class="card-footer">
              			<p class="card-text">${tempResto.restoDaerah }</p>
<!--                 		<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small> -->
              		</div>
            		</div>
          			</div>
          		</c:forEach>
          </div>
<!-- 	<table class="table table-striped table-bordered table-dark"> -->
<!-- 		<thead class="thead-dark"> -->
<!-- 		<tr> -->
<!-- 			<th>Nama</th> -->
<!-- 			<th>Daerah</th> -->
<!-- 			<th>Alamat</th> -->
<!-- 			<th>Budget Min</th> -->
<!-- 			<th>Budget Max</th> -->
<!-- 			<th>Kategori</th> -->
<!-- 			<th>Lihat Restoran</th> -->
<!-- 		</tr> -->
<!-- 		</thead> -->
<!-- 		<tbody> -->
		
					
					
<!-- 					<tr> -->
<%-- 						<td> ${tempResto.restoNama} </td> --%>
<%-- 						<td> ${tempResto.restoDaerah} </td> --%>
<%-- 						<td> ${tempResto.restoAlamat} </td> --%>
<%-- 						<td> ${tempResto.restoBudgetMin} </td> --%>
<%-- 						<td> ${tempResto.restoBudgetMax} </td> --%>
<!-- 						<td> -->
<!-- 							<ul class="list-group"> -->
<%-- 								<c:forEach var="tempTag" items="${tempResto.tags}"> --%>
<%-- 									<li class="list-group-item list-group-item-dark">${tempTag.tagNama}</li> --%>
<%-- 								</c:forEach> --%>
<!-- 							</ul> -->
<!-- 						</td> -->
<%-- 						<td><a class="btn btn-primary btn-block" href="${tempResto.id}" role="button">Lihat Restoran</a></td> --%>
<!-- 					</tr> -->
		</tbody>
	</table>
	</div>
	</div>
	</div>
	<!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
</body>
</html>