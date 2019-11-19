package com.goodreads.admincontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.goodreads.bin.book_category_master;
import com.goodreads.service.Book_category_masterService;
import com.goodreads.service.User_masterService;


@WebServlet("/book_category_masterAdminController")
public class book_category_masterAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Resource r = new ClassPathResource("beans.xml");
		BeanFactory factory = new XmlBeanFactory(r);
		Book_category_masterService bdao = (Book_category_masterService) factory.getBean("book_category_masterservice");

		response.setContentType("text/html");
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("Add Category"))
		{
			book_category_master book=new book_category_master();
			
			book.setCat_Name(request.getParameter("catname"));
			book.setCat_Description(request.getParameter("categorydescription"));
			bdao.saveCategory(book);

			response.sendRedirect("admin/index.jsp");
		}
		
	
	}

}
