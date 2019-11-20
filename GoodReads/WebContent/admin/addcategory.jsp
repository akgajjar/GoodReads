<%@page import="com.goodreads.bin.user_master"%>
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
<jsp:include page="header.jsp" />
<div class="content-inner">

	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Add Category</h2>
		</div>
	</header>

	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin/index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Add category</li>
		</ul>
	</div>

	<section class="forms">
		<div class="container-fluid">
			<div class="row">
				<div class="card-header d-flex align-items-center">
					<h3 class="h4">Add Category</h3>
				</div>
				<div class="card-body">
					<form class="form-horizontal" method="post"
						action="../book_category_masterAdminController">

						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Category Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="catname"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label"
								for="categorydescription">Category Description</label>
							<div class="col-sm-9">
								<textarea class="form-control" rows="15"
									id="categorydescription" name="categorydescription"></textarea>
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<div class="col-sm-4 offset-sm-3">
								<input type="submit" class="btn btn-primary" name="action"
									value="Add Category"> <input type="reset"
									class="btn btn-secondary" name="action" value="Cancel">

							</div>
						</div>


					</form>
				</div>
			</div>
		</div>
	</section>
</div>

<jsp:include page="footer.jsp"></jsp:include>