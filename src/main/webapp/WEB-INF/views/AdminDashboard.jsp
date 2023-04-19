<%@page import="com.arth.bean.IncomeChartBean"%>
<%@page import="java.util.List"%>
<%@page import="com.arth.bean.ExpenseChartBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Admin</title>
</head>
<body>

<body>
<h2>Admin dashboard</h2><br>

<a href="newcategory">Add Category</a><br>

<a href="listcategories">ListCategory</a><br>

<a href ="savesubcategory">Add Sub Category</a><br>

<a href="listsubcategories">List sub Category</a><br>

<a href="newstatus">Add Status</a><br>

<a href="liststatus">List Status</a><br>

<a href="newaccount">Add AccountType</a><br>

<a href="listaccount">List AccountType</a><br>

<a href="newvendor">Add Vendor</a><br>

<a href="listvendor">List Vendor</a><br>

<a href="logout">Logout</a><br>


</body>
</html>-->


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<jsp:include page="AllCss.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSidebar.jsp"></jsp:include>
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

<!-- Start Dashbord-->
<!-- <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="../admindashboard">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div> --><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Transaction Card -->
            <div class="col-xxl-3 col-md-3">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Transaction <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-arrow-left-right"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalTransaction}</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div> 
                  </div>
                </div>

              </div>
            </div><!-- End Transaction Card -->

            <!-- Expanse Card -->
            <div class="col-xxl-3 col-md-3">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>
                
                 
                <div class="card-body">
                  <h5 class="card-title">Expanse <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalExpanse==null?0:totalExpanse}</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Expanse Card -->

            <!-- Income Card -->
            <div class="col-xxl-3 col-md-3">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Income <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cash-coin"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalIncome==null?0:totalIncome}</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>


            </div><!-- End  Card -->
            
            
              
            
            <!-- User Card -->
            <div class="col-xxl-3 col-md-3">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Users <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${sumOfUsers==null?0:sumOfUsers}</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End User Card -->
                        
             

            <!-- Reports -->
            <div class="col-md-12">
              <div class="card">

                
                <div class="card-body">
                  <h5 class="card-title">Expanse-BarChart</h5>
                  
                  <%
				List<ExpenseChartBean> chartData = (List<ExpenseChartBean>) request.getAttribute("chartData");
                  List<IncomeChartBean> chartData1 = (List<IncomeChartBean>) request.getAttribute("chartData1");
				%>

                  <!-- Line Chart -->
                  <div>
                  <canvas id="Expansechart" ></canvas>
                  </div>
                  
                  <script>
								 colorArray =  [
								      'rgba(255, 99, 132, 0.2)',
								      'rgba(255, 159, 64, 0.2)',
								      'rgba(255, 205, 86, 0.2)',
								      'rgba(75, 192, 192, 0.2)',
								      'rgba(54, 162, 235, 0.2)',
								      'rgba(153, 102, 255, 0.2)',
								      'rgba(201, 203, 207, 0.2)',
								      'rgba(230, 125, 57, 0.2)',
								      'rgba(125, 230, 57, 0.2)',
								      'rgba(112, 150, 110, 0.2)',
								      'rgba(55, 55, 55, 0.2)',
								      'rgba(66, 66, 66, 0.2)'
								      
								    ]
								 
								 bgColor = [];
								 
										<%for(int i=0;i<chartData.size();i++){%>
										
											bgColor.push(colorArray[<%=i%>]);
										<%}%>
								
									const ctx = document
											.getElementById('Expansechart');
									new Chart(
											ctx,
											{
												type : 'bar',
												data : {
													labels : [ 
														<%for (ExpenseChartBean e : chartData) {%>
														 '<%=e.getMonth()%>',
															<%}%>],
													datasets : [ {
														label : 'Total ExpanseAmount',
														data : [
															<%for (ExpenseChartBean e : chartData) {%>
																	<%=e.getExpanseAmount()%>,
															<%}%>
															],
															backgroundColor:bgColor
															,
														borderWidth : 1
													} ]
												},
												options : {
													responsive:true,
													scales : {
														y : {
															beginAtZero : true
														}
													}
												}
											});
                  
									</script>

                 
        				</div>
       			 </div>
		</div>
		
		
		
<div class="col-12">
              <div class="card">

                
                <div class="card-body">
                  <h5 class="card-title">Income BarChart</h5>
                  
                  <%
				
				%>

                  <!-- Line Chart -->
                  <div>
                  <canvas id="Incomechart"></canvas>
                  </div>
                  
                  <script>
								 colorArray =  [
								      'rgba(255, 99, 132, 0.2)',
								      'rgba(255, 159, 64, 0.2)',
								      'rgba(255, 205, 86, 0.2)',
								      'rgba(75, 192, 192, 0.2)',
								      'rgba(54, 162, 235, 0.2)',
								      'rgba(153, 102, 255, 0.2)',
								      'rgba(201, 203, 207, 0.2)',
								      'rgba(230, 125, 57, 0.2)',
								      'rgba(125, 230, 57, 0.2)',
								      'rgba(112, 150, 110, 0.2)',
								      'rgba(55, 55, 55, 0.2)',
								      'rgba(66, 66, 66, 0.2)'
								      
								    ]
								 
								 bgColor = [];
								 
										<%for(int i=0;i<chartData1.size();i++){%>
										
											bgColor.push(colorArray[<%=i%>]);
										<%}%>
								
									const ctx1 = document
											.getElementById('Incomechart');
									new Chart(
											ctx1,
											{
												type : 'bar',
												data : {
													labels : [ 
														<%for (IncomeChartBean e : chartData1) {%>
														 '<%=e.getMonth()%>',
															<%}%>],
													datasets : [ {
														label : 'Total IncomeAmount',
														data : [
															<%for (IncomeChartBean e : chartData1) {%>
																	<%=e.getIncomeAmount()%>,
															<%}%>
															],
															backgroundColor:bgColor
															,
														borderWidth : 1
													} ]
												},
												options : {
													scales : {
														y : {
															beginAtZero : true
														}
													}
												}
											});
                  
									</script>

                 
        				</div>
       			 </div>
		</div>
		
		
<div class="col-12">
              <div class="card">

                
                <div class="card-body">
                  <h5 class="card-title">Expanse PieChart</h5>		
		

<%
				List<ExpenseChartBean> pieChartData = (List<ExpenseChartBean>) request.getAttribute("pieChartData");
				%>
                    
<div class="card">
            <div class="card-body">
              <h5 class="card-title">Pie Chart</h5>

              <!-- Bar Chart -->
              <canvas id="barChart" style="max-height: 400px; display: block; box-sizing: border-box; height: 400px; width: 884px;" width="1106" height="500"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#barChart'), {
                    type: 'pie',
                    data: {
                      labels: [<%for (ExpenseChartBean e : pieChartData) {%>
						 '<%=e.getCategoryName() %>',
							<%}%>],
                      datasets: [{
                        label: 'Pie Chart',
                        data: [<% for (ExpenseChartBean e : pieChartData) {%>
                        <%=e.getExpanseAmount() %>',
						<%}%>],
                        backgroundColor: [
                          'rgba(255, 99, 132, 0.2)',
                          'rgba(255, 159, 64, 0.2)',
                          'rgba(255, 205, 86, 0.2)',
                          'rgba(75, 192, 192, 0.2)',
                          'rgba(54, 162, 235, 0.2)',
                          'rgba(153, 102, 255, 0.2)',
                          'rgba(201, 203, 207, 0.2)'
                        ],
                        borderColor: [
                          'rgb(255, 99, 132)',
                          'rgb(255, 159, 64)',
                          'rgb(255, 205, 86)',
                          'rgb(75, 192, 192)',
                          'rgb(54, 162, 235)',
                          'rgb(153, 102, 255)',
                          'rgb(201, 203, 207)'
                        ],
                        borderWidth: 1
                      }]
                    },
                    options: {
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
                  });
                });
              </script>	
        	  </div>
       		 </div>
		   </div>
		 </div>
		</div>
      </div>
    </section>

  </main>
  
  <!-- End Dashbord-->

<jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>