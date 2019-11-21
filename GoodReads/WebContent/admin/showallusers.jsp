<%@page import="com.goodreads.bin.user_master"%>
<%@page import="java.util.List"%>
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
	if (session != null) {
		if (session.getAttribute("user") != null) {
			user = (user_master) session.getAttribute("user");
		} else {

			response.sendRedirect("login.jsp");
		}

	} else {

		response.sendRedirect("login.jsp");
	}
%>
<%
	Resource r = new ClassPathResource("beans.xml");
	BeanFactory factory = new XmlBeanFactory(r);
	User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");

	List<user_master> list = sdao.getUsers();
%>
<link rel="stylesheet"
	href="./vendor/datatables.net-bs4/css/dataTables.bootstrap4.css">
<link rel="stylesheet"
	href="./vendor/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
<jsp:include page="header.jsp"></jsp:include>

<div class="content-inner">
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Show All Users</h2>
		</div>
	</header>

	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin/index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Show All Users</li>
		</ul>
	</div>
	<section>
		<div class="container-fluid">
			<div class="card">
				<div class="card-header">
					<h4>Show All Users</h4>
				</div>
				<div class="card-body">

					<div class="table-responsive">
						<table id="datatable1" style="width: 100%;" class="table">
							<thead>
								<tr>
									<th>User Id</th>
									<th>First Name</th>
									<th>Middle Name</th>
									<th>Last Name</th>
									<th>Mobile No</th>
									<th>Email Id</th>
									<th>User Type</th>
									<th>More Details</th>
								</tr>
							</thead>
							<tbody>

								<%
									for (user_master u : list) {
								%>

								<tr>
									<td><%=u.getU_Id()%></td>
									<td><a href="showuserdetails.jsp?id=<%=u.getU_Id()%>"
										class="text-muted"><%=u.getU_Fname()%></a></td>
									<td><%=u.getU_Mname()%></td>
									<td><%=u.getU_Lname()%></td>
									<td><%=u.getU_Mobile()%></td>
									<td><%=u.getU_Email()%></td>
									<td><%=u.getU_Type()%></td>
									<td><a href="showuserdetails.jsp?id=<%=u.getU_Id()%>"
										style="color: black;"><i style="padding-left: 1em;"
											class="fa fa-2x fa-sign-in" aria-hidden="true"></i></a></td>
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

<!-- JavaScript files-->
<script src="./vendor/jquery/jquery.min.js"></script>
<script src="./vendor/popper.js/umd/popper.min.js">
	
</script>
<script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="./vendor/jquery.cookie/jquery.cookie.js">
	
</script>
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
