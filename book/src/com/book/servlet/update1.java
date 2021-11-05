package com.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.po.Book;
import com.book.po.Bookinfo;
import com.book.service.BookService;

public class update1 extends HttpServlet {

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

		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String a = new String (request.getParameter("a").getBytes("ISO-8859-1"),"gb2312");
		String b = new String (request.getParameter("b").getBytes("ISO-8859-1"),"gb2312");
		String c = new String (request.getParameter("c").getBytes("ISO-8859-1"),"gb2312");
		
		String d = new String (request.getParameter("d").getBytes("ISO-8859-1"),"gb2312");
		String e = new String (request.getParameter("e").getBytes("ISO-8859-1"),"gb2312");
		  String userid=request.getParameter("id");
		  int iuserid=Integer.parseInt(userid);
		  
			
			
				ClassPathXmlApplicationContext applicationContext = 
					new ClassPathXmlApplicationContext("../applicationContext.xml");
				BookService bookService = 
					(BookService)applicationContext.getBean("bookService", BookService.class);
		
				Bookinfo b1=bookService.findById_(iuserid);
				 b1.setBookname(a);
				 b1.setPublisher(c);
				 b1.setWriter(b);
				 b1.setPrice(d);
				b1.setDate(e);
				
				
				boolean c1= bookService.update_(b1);
			
				 if(c1)
				 {
					 response.sendRedirect("booklist1");
				 }
				 else
				 {
					 out.println("ÃÌº” ß∞‹");
				 }out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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

		doGet(request,response);
	}

}
