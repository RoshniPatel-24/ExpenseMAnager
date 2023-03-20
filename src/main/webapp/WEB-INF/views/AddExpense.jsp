<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Add Expense</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body>

<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Expense</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add expense</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Expense</h5>

              <!-- Add Expense -->
              <form action="saveexpense" method="post" class="row g-3">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Expense</label>
                  <input type="text" class="form-control" id="inputName5" name="expenseName">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Expense</button>
					<a type="button"  href="listexpense" class="btn btn-danger">Cancel</a>
	                </div>
              </form><!-- End expense -->

            </div>
          </div>
         </main><!-- End #main -->  
    
</body>
</html>
