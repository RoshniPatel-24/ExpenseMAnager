<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Add Status</title>

<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body>
<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Status</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add Status</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Status</h5>

              <!-- Multi Columns Form -->
              <form action="savestatus" method="post" class="row g-3">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Status Name</label>
                  <input type="text" class="form-control" id="inputName5" name="statusName">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Status</button>
				 <a type="button"  href="liststatus" class="btn btn-danger">Cancel</a>                </div>
              </form><!-- End Status -->

            </div>
          </div>
         </main><!-- End #main -->  
    
 
</body>
</html>

<!--  <form action="savestatus" method="post">

	StatusName:<input type="text" name="statusName"><br><br>
	
		<input type="submit" value="SUBMIT"><br><br>
		<a href="liststatus">List Status</a><br>
</form><br><br>-->

