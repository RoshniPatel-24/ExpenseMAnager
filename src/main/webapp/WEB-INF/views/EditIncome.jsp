<%@page import="com.arth.bean.IncomeBean"%>
<%@page import="com.arth.bean.StatusBean"%>
<%@page import="com.arth.bean.AccountBean"%>
<%@page import="com.arth.bean.UserBean"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager | Edit Expense</title>
</head>

<jsp:include page="UserHeader.jsp"></jsp:include>

<body>

 <!-- Edit Expense -->
<jsp:include page="UserSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Edit Income</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Income</li>
        </ol>
      </nav>
    </div>
 <!-- End Page Title -->
    
    <h5 class="card-title">Edit Income</h5>
				<%
					List<IncomeBean> incomelist = (List<IncomeBean>) request.getAttribute("incomelist");
					IncomeBean incomeBean = (IncomeBean) request.getAttribute("incomeBean");
				%>
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
                <input type = "hidden" name="incomeId" value="<%=incomeBean.getIncomeId() %>">
               
                <div class="form-floating mb-3">
                    	<select class="form-select" id="floatingSelect" aria-label="Account" name="userId">
                          <option value="-1">User Name</option>
                		<%
							for (UserBean u : userlist) {
						%>
							<option value="<%=u.getUserId()%>"
							<%=u.getUserId()== incomeBean.getUserId() ? "selected" : "" %>>
							<%=u.getFirstName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Your Name</label>		
				 </div>
                     	          
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title" value="<%=incomeBean.getTitle()%>">
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
							for (AccountBean a : accountlist) {
						%>
							<option value="<%=a.getAccountId()%>"
							<%=a.getAccountId() == incomeBean.getAccountId()  ? "selected" : "" %>>
							<%=a.getAccountType()%></option>
							
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
							for (StatusBean s : statuslist) {
						%>
							<option value="<%=s.getStatusId()%>"
							<%=s.getStatusId() == incomeBean.getStatusId() ? "selected" : "" %>>
							<%=s.getStatusName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Status</label>		
				 </div>
                </div>
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount" value="<%=incomeBean.getAmount()%>">
                </div>
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="inputName5" name="description" value="<%=incomeBean.getDescription()%>">
                </div>
                
                 <div class="text-center">
                  <button type="submit" class="btn btn-primary">EditIncome</button>                  
                  <a type="button"  href="listincome" class="btn btn-danger">Cancel</a>
                </div>
                </form>
         </main><!-- End #main -->  

 <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>