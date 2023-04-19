<%@page import="com.arth.bean.ExpenseBean"%>
<%@page import="com.arth.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@page import="com.arth.bean.StatusBean"%>
<%@page import="com.arth.bean.AccountBean"%>
<%@page import="com.arth.bean.VendorBean"%>
<%@page import="com.arth.bean.SubCategoryBean"%>
<%@page import="com.arth.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Edit Expense</title>
<jsp:include page="UserHeader.jsp"></jsp:include>

</head>
<body>
     <!-- Add Expense -->
<jsp:include page="UserSidebar.jsp"></jsp:include>
<main id="main" class="main">
<div class="pagetitle">
      <h1>Edit Expense</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item active">Edit Expense</li>
        </ol>
      </nav>
    </div>
 <!-- End Page Title -->
    
    <h5 class="card-title">Edit Expense</h5>
				
				<%
					List<ExpenseBean> expenselist = (List<ExpenseBean>) request.getAttribute("expenselist");
					ExpenseBean expenseBean = (ExpenseBean) request.getAttribute("expenseBean");
				%>
				<%
					List<CategoryBean> categorylist = (List<CategoryBean>) request.getAttribute("categorylist");

				%>
				<%
					List<SubCategoryBean> subcategorylist = (List<SubCategoryBean>) request.getAttribute("subcategorylist");

				%>
				<%
					List<AccountBean> accountlist = (List<AccountBean>) request.getAttribute("accountlist");
				%>
				<%
					List<VendorBean> vendorlist = (List<VendorBean>) request.getAttribute("vendorlist");
				%>
				<%
					List<UserBean> userlist = (List<UserBean>) request.getAttribute("userlist");
				%>
				<%
					List<StatusBean> statuslist = (List<StatusBean>) request.getAttribute("statuslist");
				%>
				
              <!--Add Expense Form --> 
                 
               <form action="updateexpense" method="post" class="row g-3">
               <input type = "hidden" name="expenseId" value="<%=expenseBean.getExpenseId() %>">
               <input type = "hidden" name="userId" value ="<%=expenseBean.getUserId() %>">
         
         <%-- <div class="col-md-4">
                  <div class="form-floating mb-3">
                  	
                    	<select class="form-select" id="floatingSelect" aria-label="User" name="firstName">
                         <option value="-1">Select User</option> 
                		<%
							for (UserBean u : userlist) {
						%>
							<option value="<%=u.getUserId()%>"
							<%=u.getUserId() == expenseBean.getUserId()? "selected" : "" %>>
							<%=u.getFirstName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">User</label>		
				 </div>
                </div>
         --%>   
         
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title" value="<%=expenseBean.getTitle()%>">
                </div>
                 <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="floatingSelect" aria-label="Category" name="categoryId">							
							<option value="-1">Select Category</option>
										<%
											for (CategoryBean cb : categorylist) {
										%>
										<option value="<%=cb.getCategoryId()%>"
											<%=cb.getCategoryId() == expenseBean.getCategoryId() ? "selected" : ""%>>
											<%=cb.getCategoryName()%></option>
										<%
											}
										%>
					</select>
                   
                    <label for="floatingSelect">Category</label>
                  </div>
                </div>
                
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                  	
                    	<select class="form-select" id="floatingSelect" aria-label="SubCategory" name="subCategoryId">
                         <option value="-1">Select Sub Category</option> 
                		<%
							for (SubCategoryBean sc : subcategorylist) {
						%>
							<option value="<%=sc.getSubCategoryId()%>"
							<%=sc.getSubCategoryId() == expenseBean.getSubCategoryId() ? "selected" : "" %>>
							<%=sc.getSubCategoryName()%></option>
							
							<% } %>
						</select>	
						<label for="floatingSelect" >SubCategory</label>	
				 </div>
                </div>
                
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                  	
                    	<select class="form-select" id="floatingSelect" aria-label="Vendor" name="vendorId">
                         <option value="-1">Select Vendor</option> 
                		<%
							for (VendorBean v : vendorlist) {
						%>
							<option value="<%=v.getVendorId()%>"
							<%=v.getVendorId() == expenseBean.getVendorId() ? "selected" : "" %>>
							<%=v.getVendorName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Vendor</label>		
				 </div>
                </div>
                
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    	<select class="form-select" id="floatingSelect" aria-label="Account" name="accountId">
                          <option value="-1">Account Type</option>
                		<%
							for (AccountBean a : accountlist) {
						%>
							<option value="<%=a.getAccountId()%>"
							<%=a.getAccountId() == expenseBean.getAccountId()  ? "selected" : "" %>>
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
							for (StatusBean v : statuslist) {
						%>
							<option value="<%=v.getStatusId()%>"
							<%=v.getStatusId() == expenseBean.getStatusId() ? "selected" : ""%>>
							<%=v.getStatusName()%></option>
							
							<% } %>
					</select>
					<label for="inputName5" class="form-label">Status</label>		
				 </div>
                </div>
               
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount" value="<%=expenseBean.getAmount()%>">
                </div>
						
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date" value="<%=expenseBean.getDate()%>">
                </div>
                
                <div class="col-md-10">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="inputName5" name="description" value="<%=expenseBean.getDescription()%>">
                </div>                
                
                 <div class="text-center">
                  <button type="submit" class="btn btn-primary">Update Expense</button>                  
                  <a type="button"  href="listexpense" class="btn btn-danger">Cancel</a>
                </div>	                
              </form><!-- End expense -->
         </main><!-- End #main -->  
     <jsp:include page="AdminFooter.jsp"></jsp:include>
    
</body>
</html>
    