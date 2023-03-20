<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body >

<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Category</h5>

              <!-- Multi Columns Form -->
              <form action="savecategory" method="post" class="row g-3">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Category Name</label>
                  <input type="text" class="form-control" id="inputName5" name="categoryName">
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Category</button>
                  <a type="button"  href="listcategories" class="btn btn-danger">Cancel</a>
                </div>
              </form><!-- End category -->

            </div>
          </div>
         </main><!-- End #main -->  
    
 
</body>
</html>

 
<!-- <form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>
		
		<br><br>
		<input type="submit" value="Save Category"/>
	
	</form>
	<a href="listcategories">List Category</a> <br>
	<a href ="savesubcategory">Sub Category</a>

 -->
