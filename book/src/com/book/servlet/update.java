package com.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.po.Book;
import com.book.po.Bookinfo;
import com.book.service.BookService;

public class update extends HttpServlet {

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
		 HttpSession session=request.getSession();
			
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");

		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("../applicationContext.xml");
		BookService bookService = 
			(BookService)applicationContext.getBean("bookService", BookService.class);

		  String userid=request.getParameter("userid");
		  int iuserid=Integer.parseInt(userid);
		  
		  Bookinfo bo= bookService.findById_(iuserid);

		  session.setAttribute("userid",bo);
			 response.sendRedirect("../update.jsp");
		
		 
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
