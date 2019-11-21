<%@page import="com.goodreads.service.User_masterService"%>
<%@page import="org.springframework.beans.factory.xml.XmlBeanFactory"%>
<%@page import="org.springframework.beans.factory.BeanFactory"%>
<%@page import="org.springframework.core.io.Resource"%>
<%@page import="org.springframework.core.io.ClassPathResource"%>
<%@page import="com.goodreads.bin.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<style>
readonly {
	bgcolor: blue;
}
</style>
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

	Resource r = new ClassPathResource("beans.xml");
	BeanFactory factory = new XmlBeanFactory(r);
	User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");

	int uid = Integer.parseInt(request.getParameter("id"));

	user_master u = sdao.getByU_Id(uid);
	String s;
	if(u.getU_Img()!=null){
	byte[] bdata = u.getU_Img().getBytes(1, (int) u.getU_Img().length());
			 s = new String(bdata);
	}
	else{
		if(u.getU_Gender().equalsIgnoreCase("male"))
				s = "user.png";
		else
				s="userfemale.jfif";
	}
%>
<jsp:include page="header.jsp" />
<div class="content-inner">
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Show User Details</h2>
		</div>
	</header>

	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin/index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Show User Details</li>
		</ul>
	</div>
	<section class="forms">
		<div class="container-fluid">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<h3 class="h4">Show User Details</h3>
					</div>
					<div class="row">
						<div class="card-body">
							<form class="form-horizontal" method="post" action="#">

								<div class="form-group row">
									<label class="col-sm-3 form-control-label">User Image</label>
									<div class="col-sm-9">
										<img alt="image" src="./img/profileimg/<%=s%>"
											style="width: 140px; height: 140px; background-color: blue;"> <input
											type="file" name="pic" style="margin-left: 130px">

									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">User Id</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="uid"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Id()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">User Type</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="utype"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Type()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">User
										Creation Date</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="cdate"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Creation_Date()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">User Block</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="ublock"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Id()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">First Name</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="fname"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Fname()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Middle Name</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="mname"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Mname()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Last Name</label>
									<div class="col-sm-9">
										<input type="text" style="width: 50%" class="form-control"
											name="lname" readonly="readonly" value="<%=u.getU_Mname()%>">
									</div>
								</div>

								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Gender</label>
									<div class="col-sm-9">
										<input type="text" style="width: 50%" class="form-control"
											name="gender" readonly="readonly"
											value="<%=u.getU_Gender()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Mobile No</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" style="width: 50%"
											name="mobileno" readonly="readonly"
											value="<%=u.getU_Mobile()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Email Id</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="email"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Email()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label" for="address1">Address
										1</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="address1"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Address1()%>">
									</div>
								</div>

								<%
									if (u.getU_Address2() != null) {
								%>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label" for="address2">Address
										2</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="address2"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Address2()%>">
									</div>
								</div>
								<%
									}
								%>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">City</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="city"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_city()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label" style="width: 50%">State</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="state"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_State()%>">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">Pincode</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="pincode"
											style="width: 50%" readonly="readonly"
											value="<%=u.getU_Pincode()%>">
									</div>
								</div>



							</form>
							<form class="form-horizontal" method="post"
								action="../user_masterAdminController">

								<div class="line"></div>
								<div class="form-group row">
									<div class="col-sm-4 offset-sm-3">
										<input type="submit" class="btn btn-primary" name="action"
											value="Block User"> <input type="reset"
											class="btn btn-secondary" name="action" value="Cancel">

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<jsp:include page="footer.jsp"></jsp:include>