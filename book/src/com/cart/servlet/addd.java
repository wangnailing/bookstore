package com.cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.book.po.Bookinfo;
import com.cart.po.Cart;
import com.cart.service.CartService;
import com.book.service.BookService;
import com.user.po.Userinfo;
import com.user.service.UserService;

public class addd extends HttpServlet {

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
		String bookid= request.getParameter("bookid");
		int ibookid=Integer.parseInt(bookid);
			ClassPathXmlApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("../applicationContext.xml");
			CartService cartService = 
				(CartService)applicationContext.getBean("cartService", CartService.class);
			
			UserService userService = (UserService)applicationContext.getBean("userService", UserService.class);
			Integer v=(Integer)session.getAttribute("userid");
			
				 System.out.print(ibookid+"----------------------"+v);
			boolean b= cartService.add_(ibookid,v);
			out.print(v+"______________________________________________");

			session.setAttribute("userid",v);
			if(b)
			 {
				out.print(v+"================");
				 response.sendRedirect("../details.jsp");
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
