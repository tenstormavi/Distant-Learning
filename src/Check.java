

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter p=response.getWriter();
		 String usern=request.getParameter("un");
		 String pass=request.getParameter("pas");
		 String sql="select username,password from learn where username=? and password=?";
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/batch1","Avinash","natusvincere");
     		PreparedStatement ps=c.prepareStatement(sql);
	        ps.setString(1, usern);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
			    request.getRequestDispatcher("home2.jsp").include(request, response);
		        p.print("Login Successfull...");
			    p.print("<br>");
		        p.print("Welcome"+" "+usern+"!");
			    HttpSession session=request.getSession();
			    session.setAttribute("un", usern);
			}
			else
			{
			request.getRequestDispatcher("signup.jsp").include(request, response);	
			p.print("Wrong Username or Password");
			p.print("<br>");	
			p.print("Please... sign up!!!");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
