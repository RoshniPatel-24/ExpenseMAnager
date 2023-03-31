<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	UpdatePassword</title>
 <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<main>
    <div class="container">
      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <span class="d-none d-lg-block">Expense Manager</span>
                </a>
              </div><!-- End Logo -->
              <div class="card mb-3">
                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Update Password</h5>
                    <p class="text-center small">Enter your email</p>
                  </div>

<form action="updatemypassword" method="post">
 <div class="col-12">
    <label for="email" class="form-label">Email</label>
       <div class="input-group has-validation">
          <span class="input-group-text" id="inputGroupPrepend">@</span>
              <input type="email" name="email" class="form-control" id="yourUsername" required>
               <div class="invalid-feedback">Please enter your Email.</div>
            </div>
         </div>
      
  <div class="col-12">
    <label for="pasword" class="form-label"></label>
       <div class="input-group has-validation">
          <span class="input-group-text" id="inputGroupPrepend">Password</span>
              <input type="password" name="password" class="form-control" id="password" required>
               <div class="invalid-feedback">Please enter your Password</div>
            </div>
         </div>
       
    <div class="col-12">
    <label for="otp" class="form-label"></label>
       <div class="input-group has-validation">
          <span class="input-group-text" id="inputGroupPrepend">OTP</span>
              <input type="text" name="otp" class="form-control" id="otp" required>
               <div class="invalid-feedback">Please enter otp</div>
            </div>
         </div>
 			<button class="btn btn-primary w-100" type="submit">UPDATE PASSWORD</button>
				</form><font color="red">${error}</font>
			</div>
		</div>
	</div>
</div>
</div>
</section>
</div>
</main>
</body>
</html>



<!--  Email:<input type="email" name="email"><br><br>
Password:<input type="password" name="password"><br><br>
ConfrimPassword:<input type="password" name="confrimPassword"><br><br>
OTP: <input type="text" name="otp"><br><br>

		<input type="submit" value="UPDATE PASSWORD"><br><br>-->
		
