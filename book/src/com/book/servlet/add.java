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
import com.user.service.UserService;

public class add extends HttpServlet {

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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String bookname= request.getParameter("bookname");
		String isbn= request.getParameter("isbn");
		String writer= request.getParameter("writer");
		String publisher= request.getParameter("publisher");
		String intro= request.getParameter("intro");
		String price= request.getParameter("price");
			Bookinfo b=new Bookinfo();
			 b.setBookname(bookname);
			 b.setIntro(intro);
			 b.setIsbn(isbn);
			 b.setWriter(writer);
			 b.setPublisher(publisher);
			 b.setPrice(price);
			
				ClassPathXmlApplicationContext applicationContext = 
					new ClassPathXmlApplicationContext("../applicationContext.xml");
				BookService bookService = 
					(BookService)applicationContext.getBean("bookService", BookService.class);
				
				
				 boolean c= bookService.add_(b);
			
				 if(c)
				 {
					 response.sendRedirect("booklist1");
				 }
				 else
				 {
					 out.println("ÃÌº” ß∞‹");
				 }
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
