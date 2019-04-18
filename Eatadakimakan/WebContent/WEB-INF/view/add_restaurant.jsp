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
                  <input type="text" id="namaRestoran" class="form-control" placeholder="Nama Restoran" required="required" autofocus="autofocus">
                  <label for="namaRestoran">Nama Restoran</label>
                </div>
          </div>
          <div class="form-group">
           <div class="form-label-group">
                  <input type="text" id="alamatRestoran" class="form-control" placeholder="Alamat Restoran" required="required">
                  <label for="alamatRestoran">Alamat Restoran</label>
                </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="jenisMakanan" class="form-control" placeholder="Jenis Makanan" required="required">
              <label for="jenisMakanan">Jenis Makanan</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="number" id="minBudget" class="form-control" placeholder="Budget Minimal" required="required">
                  <label for="minBudget">Budget Minimal</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="number" id="maxBudget" class="form-control" placeholder="Budget Maximal" required="required">
                  <label for="maxBudget">Budget Maximal</label>
                </div>
              </div>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="">Tambahkan Restoran</a>
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
