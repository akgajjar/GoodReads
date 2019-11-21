<%@page import="java.util.List"%>
<%@page import="com.goodreads.bin.order_master"%>
<%@page import="com.goodreads.service.Order_masterService"%>
<%@page import="com.goodreads.bin.user_master"%>
<%@page import="com.goodreads.service.User_masterService"%>
<%@page import="org.springframework.beans.factory.BeanFactory"%>
<%@page import="org.springframework.beans.factory.xml.XmlBeanFactory"%>
<%@page import="org.springframework.core.io.ClassPathResource"%>
<%@page import="org.springframework.core.io.Resource"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <%
  
  response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
  user_master user = null;
    		if(session!=null)
    		{
    			if(session.getAttribute("user")!=null)
    			{
    				user=(user_master) session.getAttribute("user");
    			}
    			else
    			{

    				response.sendRedirect("login.jsp");
    			}
    			
    		}
    		else
    		{

				response.sendRedirect("login.jsp");
    		}
    		
  
  %>
<%
    
	Resource r = new ClassPathResource("beans.xml");
	BeanFactory factory = new XmlBeanFactory(r);
	Order_masterService sdao = (Order_masterService) factory.getBean("order_masterservice");
	
	List<order_master> list = sdao.getOrders();
    %>
<link rel="stylesheet"
	href="./vendor/datatables.net-bs4/css/dataTables.bootstrap4.css">
<link rel="stylesheet"
	href="./vendor/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
<jsp:include page="header.jsp"></jsp:include>

<div class="content-inner">
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Show All Orders</h2>
		</div>
	</header>

	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin/index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Show All Orders</li>
		</ul>
	</div>
	<section>
		<div class="container-fluid">
			<div class="card">
				<div class="card-header">
					<h4>Show All Orders</h4>
				</div>
				<div class="card-body">

					<div class="table-responsive">
						<table id="datatable1" style="width: 100%;" class="table">
							<thead>
								<tr>
									<th>Order Id</th>
									<th>User's Name</th>
									<th>Order Date</th>
									<th>Order Type</th>
									<th>Order's Total Amount</th>
									<th>No of Items</th>
									<th>More Details</th>
								</tr>
							</thead>
							<tbody>

								<%
                      for(order_master u : list)
                      {%>

								<tr>
									<td><%=u.getOrder_Id() %></td>
									<td><a href="#" class="text-muted"><%=u.getUser().getU_Fname()+" "+u.getUser().getU_Mname()+" "+u.getUser().getU_Lname()%></a></td>
									<td><%=u.getOrder_Date() %></td>
									<td><%=u.getOrder_Type() %></td>
									<td><%=u.getOrder_Final_Price() %></td>
									<td><%=u.getItems().size() %>
									<td><a href="showorderdetails.jsp" style="color: black;"><i
											style="padding-left: 1em;" class="fa fa-2x fa-sign-in"
											aria-hidden="true"></i></a></td>
								</tr>
								<%
                      }
                      %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
</div>
</div>
</div>
<!-- JavaScript files-->
<script src="./vendor/jquery/jquery.min.js"></script>
<script src="./vendor/popper.js/umd/popper.min.js"> </script>
<script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="./vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="./vendor/chart.js/Chart.min.js"></script>
<script src="./vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Data Tables-->
<script src="./vendor/datatables.net/js/jquery.dataTables.js"></script>
<script src="./vendor/datatables.net-bs4/js/dataTables.bootstrap4.js"></script>
<script
	src="./vendor/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="./vendor/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<script src="./js/tables-datatable.js"></script>
<script src="./js/front.js"></script>
