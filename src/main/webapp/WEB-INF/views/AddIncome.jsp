<%@page import="com.arth.bean.StatusBean"%>
<%@page import="com.arth.bean.UserBean"%>
<%@page import="com.arth.bean.ExpenseBean"%>
<%@page import="com.arth.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@page import="com.arth.bean.AccountBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Add Income</title>
</head>

<jsp:include page="UserHeader.jsp"></jsp:include>

<body>

 <!-- Add Expense -->
<jsp:include page="UserSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Add Income</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Add Income</li>
        </ol>
      </nav>
    </div>
 <!-- End Page Title -->
    
    <h5 class="card-title">Add Income</h5>
				
				<%
					List<UserBean> userlist = (List<UserBean>) request.getAttribute("userlist");
				%>
				<%
					List<AccountBean> accountlist = (List<AccountBean>) request.getAttribute("accountlist");
				%>
				<%
					List<StatusBean> statuslist = (List<StatusBean>) request.getAttribute("statuslist");
				%>
				
              <!--Add Income Form --> 
                 
               <form action="saveincome" method="post" class="row g-3">
               
                <div class="form-floating mb-3">
                    	<select class="form-select" id="floatingSelect" aria-label="Account" name="userId">
                          <option value="-1">User Name</option>
                		<%
							for (UserBean u : userlist) {
						%>
							<option value="<%=u.getUserId()%>">
							<%=u.getFirstName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Your Name</label>		
				 </div>
                     	          
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title">
                </div>
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date">
                </div>
                       
               <div class="col-md-4">
                  <div class="form-floating mb-3">
                    	<select class="form-select" id="floatingSelect" aria-label="Account" name="accountId">
                          <option value="-1">Account Type</option>
                		<%
							for (AccountBean v : accountlist) {
						%>
							<option value="<%=v.getAccountId()%>">
							<%=v.getAccountType()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Account Type</label>		
				 </div>
                </div>
                
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    	<select class="form-select" id="floatingSelect" aria-label="Status" name="statusId">
                          <option value="-1">Select Status</option>
                		<%
							for (StatusBean v : statuslist) {
						%>
							<option value="<%=v.getStatusId()%>">
							<%=v.getStatusName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Status</label>		
				 </div>
                </div>

                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount">
                </div>
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="inputName5" name="description">
                </div>
                
                 <div class="text-center">
                  <button type="submit" class="btn btn-primary">Add Income</button>                  
                  <a type="button"  href="listincome" class="btn btn-danger">Cancel</a>
                </div>
                </form>
         </main><!-- End #main -->  
    
 <jsp:include page="AdminFooter.jsp"></jsp:include>


</body>
</html>