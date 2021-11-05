package com.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.po.Bookinfo;
import com.book.po.Remark;
import com.book.service.BookService;

public class padd extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public padd() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		 HttpSession session=request.getSession();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String pinglun= request.getParameter("pinglun");
		String xing= request.getParameter("xing");

		String bookid= request.getParameter("bookname");
	
		int ibookid=Integer.parseInt(bookid);
		Integer o1=(Integer)session.getAttribute("userid");
		
		
			ClassPathXmlApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("../applicationContext.xml");
			BookService bookService = 
				(BookService)applicationContext.getBean("bookService", BookService.class);
			
			out.print(o1+ibookid+xing+pinglun);
			
			boolean c= bookService.padd_(o1,ibookid,xing,pinglun);
		
			 if(c)
			 {
				 response.sendRedirect("booklist?bookname="+bookid+"");
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

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
