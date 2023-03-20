<%@page import="com.arth.bean.ExpenseBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Expense</title>
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
          <li class="breadcrumb-item active">List Expense<li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

<h3>List Expense</h3>

 
 <%
	List<ExpenseBean> list =  (List<ExpenseBean>)request.getAttribute("list");
 %>

<section class="section">
      <div class="row">
        <div class="col-lg-12">

<div class="iconslist" align="right">
        <a href="newexpense">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Expense</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1">
                <thead>
                  <tr>
                    <th scope="col">ExpenseId</th>
                    <th scope="col">ExpenseName</th>
                    <th scope="col">Deleted?</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>

				<%for(ExpenseBean cb:list){ %>
						<tr>
							<td><%=cb.getExpenseId() %></td>
							<td><%=cb.getExpenseName() %></td>
							<td><%=cb.getDeleted()%></td>
							<td><a href="deleteexpense/<%=cb.getExpenseId() %>">Delete </a>|
						<a href="viewexpense/<%=cb.getExpenseId() %>">View</a></td>
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