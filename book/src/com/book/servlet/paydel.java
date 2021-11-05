package com.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.po.Order;
import com.book.po.Remark;
import com.book.service.BookService;

public class paydel extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public paydel() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

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
		ClassPathXmlApplicationContext applicationContext = 
			new ClassPathXmlApplicationContext("../applicationContext.xml");
		BookService bookService = 
			(BookService)applicationContext.getBean("bookService", BookService.class);

		  String bookid=request.getParameter("bookid");
		  int bookidd=Integer.parseInt(bookid);
		  String pingid=request.getParameter("payid");
		  int pingidd=Integer.parseInt(pingid);
		  Order bo= bookService.findbyid_(pingidd);
		 boolean b= bookService.paydel_(bo);
		 if(b)
		 {
			 response.sendRedirect("booklist?bookname="+bookidd+"");
		 }
		 else
		 {
			 out.println("É¾³ýÊ§°Ü");
		 }
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
