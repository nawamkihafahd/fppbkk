<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>${resto.restoNama}</title>

  <!-- Bootstrap core CSS -->
 
  <link href=" <c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href=" <c:url value="/resources/css/shop-homepage.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
</head>


<body class="own-texture-bg">

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


<div class = "container">
	
	<div class = "row">
		<div class="col-lg-3">
		
		<div class = "container bg-dark m-3">
		
        <h2 class="my-4 eat-block-clear">Budget: ${resto.restoBudgetMin}</h2>
        <div class = "container pb-2">
        <ul class="list-group">
        	<li class="list-group-item list-group-item-info"> ${resto.restoDaerah} </li>
        	<li class="list-group-item list-group-item-secondary"> ${resto.restoAlamat} </li>
        </ul>
        </div>
		</div>
      </div>
		<div class="col-lg-9">
			
			<div class= "container p-1">
			<div class= "bg-light p-2 mb-4">
				<div class = "container">
					<h1>${resto.restoNama}</h1>
					<img class = "img-fluid p-1" src="<c:url value="${resto.restoImagePath}"/>">
				<br>
				
				<c:forEach var="tempTag" items="${tagku}"> 	
				<a href="#" class="btn btn-secondary" role="button">${tempTag.tagNama}</a>
				</c:forEach>	
				</div>
			</div>
			</div>
				
			<div class="row">
				<c:forEach var="tempMenu" items="${menuku}">
				<div class="col-lg-4 col-md-6 mb-4">
            		<div class="card h-100">
              			<a href="#"><img class="card-img-top" src="<c:url value="${tempMenu.menuImagePath}"/>" alt=""></a>
              		<div class="card-body">
                		<h4 class="card-title">
                  			<a href="#"class="font-bro	wn">${tempMenu.menuNama}</a>
                		</h4>
                		<h5>${tempMenu.menuHarga}</h5>
              		</div>
              		<div class="card-footer">
                		<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              		</div>
            		</div>
          		</div>
				</c:forEach>
			</div>
			
		
		
		</div>
		
	
	</div>
</div>



<!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
				
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>