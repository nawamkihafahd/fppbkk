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
	<div class="container">
	<div class="card">
      <div class="card-header">Hasil Cari Restoran</div>
      <div class="card-body">
	<table class="table table-striped table-bordered table-dark">
		<thead class="thead-dark">
		<tr>
			<th>Nama</th>
			<th>Daerah</th>
			<th>Alamat</th>
			<th>Budget Min</th>
			<th>Budget Max</th>
			<th>Kategori</th>
			<th>Lihat Restoran</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="tempResto" items="${resto}">
					
					<tr>
						<td> ${tempResto.restoNama} </td>
						<td> ${tempResto.restoDaerah} </td>
						<td> ${tempResto.restoAlamat} </td>
						<td> ${tempResto.restoBudgetMin} </td>
						<td> ${tempResto.restoBudgetMax} </td>
						<td>
							<ul>
								<c:forEach var="tempTag" items="${tempResto.tags}">
									<li>${tempTag.tagNama}</li>
								</c:forEach>
							</ul>
						</td>
						<td><a class="btn btn-primary btn-block" href="restoran/${tempResto.id}" role="button">Lihat Restoran</a></td>
					</tr>
				
		</c:forEach>
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