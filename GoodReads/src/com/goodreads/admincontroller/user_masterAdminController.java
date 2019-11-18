package com.goodreads.admincontroller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.goodreads.bin.user_master;
import com.goodreads.service.User_masterService;

@WebServlet("/user_masterAdminController")
public class user_masterAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("Login")) {
			System.out.println("");
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			Resource r = new ClassPathResource("beans.xml");
			BeanFactory factory = new XmlBeanFactory(r);
			User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");

			user_master user = sdao.Check_Login(email, password);
			
			HttpSession session = request.getSession();
			if (user != null) {
				

				session.setAttribute("user", user);

				response.sendRedirect("admin/index.jsp");
			} else {
				
				session.setAttribute("error", "Username and Password is incorrect");
				response.sendRedirect("admin/login.jsp");
			}

		}
		else if(action.equalsIgnoreCase("add admin"))
		{
			user_master u=new user_master();
			u.setU_Fname(request.getParameter("fname"));
			u.setU_Mname(request.getParameter("mname"));
			u.setU_Lname(request.getParameter("lname"));
			u.setU_Mobile(request.getParameter("mobileno"));
			u.setU_Email(request.getParameter("email"));
			u.setU_Address1(request.getParameter("address1"));
			u.setU_Address2(request.getParameter("address2"));
			u.setU_city(request.getParameter("city"));
			u.setU_State(request.getParameter("state"));
			u.setU_Pincode(Integer.parseInt(request.getParameter("pincode")));
			u.setU_Password(request.getParameter("password"));
			u.setU_Gender(request.getParameter("gender"));
			u.setU_Type("admin");
			u.setU_Block(false);
			u.setU_Creation_Date(new Timestamp(new Date().getTime()));
			
			Resource r = new ClassPathResource("beans.xml");
			BeanFactory factory = new XmlBeanFactory(r);
			User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");
			
			sdao.saveUser(u);
			response.sendRedirect("admin/index.jsp");

		}
		
	}

}
