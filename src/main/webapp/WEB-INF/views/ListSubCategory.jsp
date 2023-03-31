<%@page import="java.util.List"%>
<%@page import="com.arth.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Sub Category</title>

<jsp:include page="AdminHeader.jsp"></jsp:include>

</head>
<body>

<jsp:include page="AdminSidebar.jsp"></jsp:include>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">List Sub Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

<h3>List Sub Category</h3>
 
 <%
	List<SubCategoryBean> subcategorylist =  (List<SubCategoryBean>)request.getAttribute("subcategorylist");
 %>

<section class="section">
      <div class="row">
        <div class="col-lg-12">
        
        <div class="iconslist" align="right">
        <a href="newsubcategory">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Sub Categories</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1">
                <thead>
                  <tr>
                    <th scope="col">SubCategoryId</th>
                    <th scope="col">SubCategoryName</th>
                    <th scope="col">CategoryName</th>
                    <th scope="col">Deleted?</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>

			<%for(SubCategoryBean cb:subcategorylist){ %>
	<tr>
		<td><%=cb.getSubCategoryId() %></td>
		<td><%=cb.getSubCategoryName() %></td>
		<td><%=cb.getCategoryName()%></td>
		<td><%=cb.isDeleted()%></td>
		<td><a href="deletesubcategory/<%=cb.getSubCategoryId() %>">Delete</a>|
		<a href="viewsubcategory/<%=cb.getSubCategoryId() %>">View</a></td>
	</tr>
	
	<%} %>
	

</tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>
        </div>
      </div>
    </section>
   </main>


</body>
</html>