package com.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.service.BookService;
import com.user.po.Userinfo;
import com.user.service.UserService;


public class login extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String username= request.getParameter("name");
		 String userpwd= request.getParameter("pwd");

		  HttpSession session=request.getSession();
		
			ClassPathXmlApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("../applicationContext.xml");
			BookService bookService = 
				(BookService)applicationContext.getBean("bookService", BookService.class);
			UserService userService = (UserService)applicationContext.getBean("userService", UserService.class);
			
	
			boolean b=bookService.login_(username, userpwd);
			 if(b)
			 {
				 response.sendRedirect("booklist1");
				 //response.sendRedirect("AdminList");
			 }
			 else
			 {
				 out.println("µÇÂ¼Ê§°Ü");
			 }
	
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
