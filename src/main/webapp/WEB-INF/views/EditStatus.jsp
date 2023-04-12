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
      <h1>Edit Status</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Status</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Status</h5>

              <!-- Multi Columns Form -->
              <form action="updatestatus" method="post" class="row g-3">
                <input type="hidden" name="statusId" value="${statusBean.statusId}"/>

                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Status Name</label>
                  <input type="text" class="form-control" id="inputName5" name="statusName" value="${statusBean.statusName}">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Edit Status</button>
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

    