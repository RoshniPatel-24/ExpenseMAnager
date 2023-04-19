<%@page import="java.util.List"%>
<%@page import="com.arth.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	ListCategory</title>

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
          <li class="breadcrumb-item active">List Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

<%
	List<CategoryBean> categorylist =  (List<CategoryBean>)request.getAttribute("categorylist");
 %>


 <section class="section">
      <div class="row">
        <div class="col-lg-12">
        
        <div class="iconslist" align="right">
        <a href="newcategory">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Categories</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1">
                <thead>
                  <tr>
                    <th scope="col">CategoryId</th>
                    <th scope="col">CategoryName</th>
                    <th scope="col">Deleted?</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                
                <%for(CategoryBean cb:categorylist){ %>
                
                  <tr>
                   		<td><%=cb.getCategoryId() %></td>
						<td><%=cb.getCategoryName() %></td>
						<td><%=cb.getDeleted()%></td>
						<td><a href="deletecategory/<%=cb.getCategoryId() %>"><i class="bi bi-trash text-danger"></i></a> |
						<a href="viewcategory/<%=cb.getCategoryId() %>"><i class="bi bi-eye"></i></a> |						
					    <a href="editcategory?categoryId=<%=cb.getCategoryId()%>"><i class="bi bi-pencil"></i>   </a></td>
                  </tr>                  
                  <%} %>                  
                </tbody>
              </table>    <!-- End Table with stripped rows -->             
            </div>
          </div>
        </div>
      </div>
    </section>
   </main>
   <jsp:include page="AllJs.jsp"></jsp:include>
    <jsp:include page="AdminFooter.jsp"></jsp:include>
   
  </body>
</html>
