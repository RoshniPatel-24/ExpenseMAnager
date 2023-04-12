<%@page import="com.arth.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@page import="com.arth.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Edit Category</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Edit Sub Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Sub Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
<section class="section">
   <div class="row">
	<div class="col-lg-12">   
	   <div class="card">
          <div class="card-body">
             <h5 class="card-title">Edit Sub Category</h5>				
				<%
					List<CategoryBean> categorylist = (List<CategoryBean>) request.getAttribute("categorylist");
					SubCategoryBean subCategoryBean = (SubCategoryBean) request.getAttribute("subCategoryBean");
				%>
				
				
     <!-- Multi Columns Form -->
              <form action="updatesubcategory" method="post" class="row g-3">
              <input type="hidden" name="subCategoryId" value="<%=subCategoryBean.getSubCategoryId() %>"/>
            
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Sub Category Name</label>
                  <input type="text" class="form-control" id="inputName5" name="subCategoryName" value="<%=subCategoryBean.getSubCategoryName()%>" >
                </div>
                
                 <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="floatingSelect" aria-label="Category" name="categoryId" >	
							<option value="-1">Select Category</option>
										<%
											for (CategoryBean cb : categorylist) {
										%>
										<option value="<%=cb.getCategoryId()%>"
											<%=cb.getCategoryId() == subCategoryBean.getCategoryId() ? "selected" : ""%>>
											<%=cb.getCategoryName()%></option>
										<%
											}
										%>
							
					</select>
                   
                    <label for="floatingSelect">Sub Category</label>
                  </div>
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Edit Sub Category</button>
                  <a type="button"  href="listcategories" class="btn btn-danger">Cancel</a>
                </div>
              </form><!-- End category -->
            </div>
          </div>
         </div>
         </div>
         </section>
         </main>
         </body>
         </html>