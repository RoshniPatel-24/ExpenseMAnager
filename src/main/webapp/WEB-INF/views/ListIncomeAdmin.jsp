<%@page import="com.arth.bean.IncomeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Income</title>
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
          <li class="breadcrumb-item active">List Income<li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

<h3>List Income</h3>

 
 <%
	List<IncomeBean> incomelist =  (List<IncomeBean>)request.getAttribute("incomelist");
 %>

<section class="section">
      <div class="row">
        <div class="col-lg-12">

<div class="iconslist" align="right">
        <a href="addincome">
      <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Income</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" border="1" id="listincome">
                <thead>
                  <tr>
                    <th scope="col">IncomeId</th>
                    <th scope="col">Title</th>                                        
     				<th scope="col">Date</th>
     				<th scope="col">UserName</th>
     				<th scope="col">AccountType</th>
     				<th scope="col">Description</th>
     				<th scope="col">StatusName</th>
                    <th scope="col">Amount</th>  
                    <th scope="col">Action</th>                    
                  </tr>
                </thead>
                <tbody>

				<%for(IncomeBean ib:incomelist){ %>
						<tr>
							<td><%=ib.getIncomeId()%></td>
							<td><%=ib.getTitle()%></td> 
							<td><%=ib.getDate()%></td>					
							<td><%=ib.getFirstName()%></td>							
							<td><%=ib.getAccountType()%> </td>
							<td><%=ib.getDescription()%></td>
							<td><%=ib.getStatusName()%></td>
							<td><%=ib.getAmount()%></td>
							<td><a href="deleteincome/<%=ib.getIncomeId()%>" onclick="return confirm('Are you sure want to delete this record?')"><i class="bi bi-trash text-danger"></i> </a>|
						<a href="viewincome?incomeId=<%=ib.getIncomeId() %>"><i class="bi bi-eye"></i></a> |
						<a href="editincome?incomeId=<%=ib.getIncomeId()%>"><i class="bi bi-pencil"></i>   </a>
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
    <jsp:include page="AdminFooter.jsp"></jsp:include>
   
</body>
</html>