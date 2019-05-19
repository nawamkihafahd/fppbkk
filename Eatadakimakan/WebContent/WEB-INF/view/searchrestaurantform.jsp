<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Eatadakimakan-Add Restaurant</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css"/>" rel="stylesheet">
  
  <link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

</head>

<body class="own-custom-res-bg">

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Tambahkan Restoran</div>
      <div class="card-body">
        <form>
          <div class="form-group">
                <div class="form-label-group">
                  <input type="text" id="budget" class="form-control" placeholder=" " required="required" autofocus="autofocus">
                  <label for="namaRestoran">Budget</label>
                </div>
          </div>
          <div class="form-group">
           <div class="form-label-group">
                  <input type="text" id="location" class="form-control" placeholder=" ">
                  <label for="alamatRestoran">Lokasi</label>
                </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="tag" class="form-control" placeholder=" ">
              <label for="jenisMakanan">Tag</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="">Cari</a>
        </form>
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
