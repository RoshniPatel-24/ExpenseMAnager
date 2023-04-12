<%@page import="com.arth.bean.VendorBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Vendor</title>

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
          <li class="breadcrumb-item active">List Vendor</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

<h3>List Vendor</h3>
 
 <%
	List<VendorBean> vendorlist =  (List<VendorBean>)request.getAttribute("vendorlist");
 %>


	<section class="section">
      <div class="row">
        <div class="col-lg-12">
        
        <div class="iconslist" align="right">
        <a href="newvendor">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vendor</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1">
                <thead>
                  <tr>
                    <th scope="col">VendorId</th>
                    <th scope="col">VendorName</th>
                    <th scope="col">Deleted?</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
	
<%for(VendorBean cb:vendorlist){ %>
	<tr>
		<td><%=cb.getVendorId() %></td>
		<td><%=cb.getVendorName() %></td>
		<td><%=cb.getDeleted()%></td>
		<td><a href="deletevendor/<%=cb.getVendorId() %>"><i class="bi bi-trash text-danger"></i> </a>|
		<a href="viewvendor/<%=cb.getVendorId() %>"><i class="bi bi-eye"></i> </a>|
		<a href="editvendor?vendorId=<%=cb.getVendorId()%>"><i class="bi bi-pencil"></i>   </a>
		
		
		
		</td>
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
<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>