package com.goodreads.admincontroller;

import java.io.IOException;
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

			if (user != null) {
				HttpSession session = request.getSession();

				session.setAttribute("user", user);

				response.sendRedirect("admin/index.jsp");
			} else {
				response.sendRedirect("admin/login.jsp");
			}

		}
	}

}
