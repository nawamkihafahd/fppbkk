<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Eatadakimakan Search Restaurant</title>

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
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Cari Restoran</div>
      <div class="card-body">
      	<form:form action="searchresult" method="post">
      		
          <div class="form-group">
                <div class="form-label-group">
                  <input type="number" name="budget" class="form-control" placeholder="Budget" required="required" autofocus="autofocus"/>
                  <label for="budget">Budget</label>
                </div>
          </div>
          <div class="form-group">
           <div class="form-label-group">
                  <input type="text" name="location" class="form-control" placeholder="Lokasi"/>
                  <label for="location">Lokasi</label>
                </div>
          </div>
          <button type="submit" class="btn btn-primary btn-block" value="submit" name="submit">Cari Restoran</button>
          <button type="submit" class="btn btn-primary btn-block" value="random" name="random">Search and Randomize</button>
      	</form:form>
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
