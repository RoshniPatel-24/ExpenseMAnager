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
      <h1>Edit Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
 <section class="section">
		<div class="row">
			<div class="col-lg-12">   
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Category</h5>

              <!-- Multi Columns Form -->
              <form action="updatecategory" method="post" class="row g-3">
                <input type="hidden" name="categoryId" value="${categoryBean.categoryId}"/>
							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">Category Name</label>
								<div class="col-sm-6">
									<input type="text" name="categoryName" value="${categoryBean.categoryName}" class="form-control">
								</div>
							</div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Update Category</button>
                  <a type="button"  href="listcategories" class="btn btn-danger">Cancel</a>
                </div>
              </form><!-- End category -->
             </div>
          </div>
       </div>
	</div>
 </section>
</main><!-- End #main -->  
 <jsp:include page="AdminFooter.jsp"></jsp:include>
 
</body>
</html>