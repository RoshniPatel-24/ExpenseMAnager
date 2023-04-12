<%@page import="com.arth.bean.ExpenseBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Expense</title>
<jsp:include page="UserHeader.jsp"></jsp:include>
</head>
<body>
<jsp:include page="UserSidebar.jsp"></jsp:include>

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
	List<ExpenseBean> expenselist =  (List<ExpenseBean>)request.getAttribute("expenselist");
 %>

<section class="section">
      <div class="row">
        <div class="col-lg-16">

<div class="iconslist" align="right">
        <a href="addexpense">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Expense</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1" id="listexpense">
                <thead>
                  <tr>
                    <th scope="col">ExpenseId</th>
                    <th scope="col">Title</th>                                        
                    <th scope="col">CategoryName</th>                                        
                    <th scope="col">SubCategoryName</th>
                    <th scope="col">VendorName</th> 
                    <th scope="col">AccountName</th>
                    <th scope="col">Amount</th>  
                    <th scope="col">StatusName</th>
                    <th scope="col">Date</th>
                    <th scope="col">Description</th>
                    <th scope="col">UserName</th>
                    <th scope="col">Action</th>                    
                  </tr>
                </thead>
                <tbody>

				<%for(ExpenseBean eb:expenselist){ %>
						<tr>
							<td><%=eb.getExpenseId()%></td>
							<td><%=eb.getTitle()%></td> 
							<td><%=eb.getCategoryName()%></td>
							<td><%=eb.getSubCategoryName()%></td>
							<td><%=eb.getVendorName() %></td>
							<td><%=eb.getAccountType()%> </td>
							<td><%=eb.getAmount()%></td>
							<td><%=eb.getStatusName()%></td>
							<td><%=eb.getDate()%></td>
							<td><%=eb.getDescription()%></td>
							<td><%=eb.getFirstName()%></td> 
							<td><a href="deleteexpense/<%=eb.getExpenseId() %>" onclick="return confirm('Are you sure want to delete this record?')"><i class="bi bi-trash text-danger"></i> </a>|
						<a href="viewexpense?expenseId=<%=eb.getExpenseId() %>"><i class="bi bi-eye"></i></a>|
						<a href="editexpense?expenseId=<%=eb.getExpenseId()%>"><i class="bi bi-pencil"></i>   </a>
						
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