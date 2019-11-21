package com.goodreads.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tools.ant.taskdefs.condition.Http;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.goodreads.bin.book_master;
import com.goodreads.service.Book_masterService;

@WebServlet("/Book_masterController")
public class Book_masterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String action=request.getParameter("action");
		Resource r = new ClassPathResource("beans.xml");
		BeanFactory factory = new XmlBeanFactory(r);
		Book_masterService bdao = (Book_masterService) factory.getBean("book_masterservice");
		
		if(action.equalsIgnoreCase("Sell"))
		{
		
			book_master b=new book_master();
			b.setISBN(request.getParameter("isbn"));
			b.setB_Name(request.getParameter("bname")); 
			b.setB_Author(request.getParameter("bauthor")); 
			b.setB_price(Double.parseDouble(request.getParameter("bprice"))); 
			b.setB_Page(Integer.parseInt(request.getParameter("bpage")));
			b.setB_Type(request.getParameter("btype")); 
			b.setB_Description(request.getParameter("bdescription")); 
		
			
			bdao.saveBook(b);
			request.getRequestDispatcher("index.jsp").include(request, response);


	}
	
	}
}