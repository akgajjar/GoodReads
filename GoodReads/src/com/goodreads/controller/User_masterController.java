package com.goodreads.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.goodreads.bin.user_master;
import com.goodreads.service.User_masterService;


@WebServlet("/User_masterController")
public class User_masterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Signup"))
		{
		
			user_master u=new user_master();
			u.setU_Fname(request.getParameter("fname"));
			u.setU_Mname(request.getParameter("mname"));
			u.setU_Lname(request.getParameter("lname"));
			u.setU_Mobile(request.getParameter("mobile"));
			u.setU_Email(request.getParameter("email"));
			u.setU_Address1(request.getParameter("add1"));
			u.setU_Address2(request.getParameter("add2"));
			u.setU_city(request.getParameter("city"));
			u.setU_State(request.getParameter("state"));
			u.setU_Pincode(Integer.parseInt(request.getParameter("pincode")));
			u.setU_Password(request.getParameter("password"));
			u.setU_Gender(request.getParameter("gender"));
			u.setU_Type("user");
			u.setU_Block(false);
			u.setU_Creation_Date(new Timestamp(new Date().getTime()));
			
			Resource r = new ClassPathResource("beans.xml");
			BeanFactory factory = new XmlBeanFactory(r);
			User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");
			
			sdao.saveUser(u);
			request.getRequestDispatcher("login.jsp").include(request, response);


	}
		else if(action.equalsIgnoreCase("Login"))
		{
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				Resource r = new ClassPathResource("beans.xml");
				BeanFactory factory = new XmlBeanFactory(r);
				User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");
				user_master user = sdao.Check_Login(email, password);
				if(user!=null)
				{
					HttpSession session=request.getSession();
					session.setAttribute("user", user);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else
				{
					System.out.println("Your Username Or Password Is Incorrect");
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
			}
		else if(action.equalsIgnoreCase("update"))
		{
			user_master u=new user_master();
			u.setU_Fname(request.getParameter("fname"));
			u.setU_Mname(request.getParameter("mname"));
			u.setU_Lname(request.getParameter("lname"));
			u.setU_Mobile(request.getParameter("mobile"));
			u.setU_Email(request.getParameter("email"));
			u.setU_Address1(request.getParameter("add1"));
			u.setU_Address2(request.getParameter("add2"));
			u.setU_city(request.getParameter("city"));
			u.setU_State(request.getParameter("state"));
			u.setU_Pincode(Integer.parseInt(request.getParameter("pincode")));
			u.setU_Type("user");
			
			Resource r = new ClassPathResource("beans.xml");
			BeanFactory factory = new XmlBeanFactory(r);
			User_masterService sdao = (User_masterService) factory.getBean("user_masterservice");
			
			sdao.updateUser(u);
			HttpSession session=request.getSession();
			session.setAttribute("user",u);
			response.sendRedirect("Viewprofile.jsp");
			
		}

	}
}

	