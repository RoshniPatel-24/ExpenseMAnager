<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Edit Vendor</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body>

<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Edit Vendor</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Vendor</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Vendor</h5>

              <!-- Add Vendor Form -->
              <form action="updatevendor" method="post" class="row g-3">
              <input type = "hidden" name="vendorId" value="${vendorBean.vendorId}">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Edit Vendor</label>
                  <input type="text" class="form-control" id="inputName5" name="vendorName" value="${vendorBean.vendorName}">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Update Vendor</button>
				<a type="button"  href="listvendor" class="btn btn-danger">Cancel</a>                </div>
              </form><!-- End Vendor -->

            </div>
          </div>
         </main><!-- End #main -->  
    


</body>
</html>