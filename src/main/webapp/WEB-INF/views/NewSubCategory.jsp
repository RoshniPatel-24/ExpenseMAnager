<%@page import="com.arth.bean.SubCategoryBean"%>
<%@page import="com.arth.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	New Sub Category</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Sub Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add Sub Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
    
 <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Sub Category</h5>
				
				<%
					List<CategoryBean> categorylist = (List<CategoryBean>) request.getAttribute("categorylist");
				%>
				
				
              <!-- Multi Columns Form -->
              <form action="savesubcategory" method="post" class="row g-3">
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Sub Category Name</label>
                  <input type="text" class="form-control" id="inputName5" name="subCategoryName">
                </div>
                
                 <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="floatingSelect" aria-label="Category" name="categoryId">
                          
						<%
							for (CategoryBean cb : categorylist) {
						%>
							<option value="<%=cb.getCategoryId()%>">
							<%=cb.getCategoryName()%></option>
							
							<%}%>
					</select>
                   
                    <label for="floatingSelect">Category</label>
                  </div>
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Sub Category</button>
                  <a type="button"  href="listcategories" class="btn btn-danger">Cancel</a>
                </div>
              </form><!-- End category -->

            </div>
          </div>
         </main><!-- End #main -->  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



	<!--  <form action="savesubcategory" method="post">
		SubCategoryName : <input type="text" name="subCategoryName"/> 
		
		<br><BR>
		 Category <select name="categoryId">

			
		</select><br><br>
		
		<input type="submit" value="Add SubCategory"/><br><br>
		<a href="listsubcategories">List sub Category</a><br>
	</form>-->

</body>
</html>