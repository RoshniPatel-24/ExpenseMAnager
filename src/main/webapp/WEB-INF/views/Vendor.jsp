<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Add Vendor</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body>

<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Vendor</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add Vendor</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Vendor</h5>

              <!-- Add Vendor Form -->
              <form action="savevendor" method="post" class="row g-3">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Add Vendor</label>
                  <input type="text" class="form-control" id="inputName5" name="vendorName">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Vendor</button>
				<a type="button"  href="listvendor" class="btn btn-danger">Cancel</a>               
				 </div>
              </form><!-- End Vendor -->

            </div>
          </div>
         </main><!-- End #main -->  
    

 <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>

<!--<form action="savevendor" method="post">

	VendorName:<input type="text" name="vendorName"><br><br>
	
		<input type="submit" value="SUBMIT"><br><br>
		<a href="listvendor">List Vendor</a><br>
</form><br><br>-->

