

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		String name=request.getParameter("nm");
		String eid=request.getParameter("eid");
		String usern=request.getParameter("un");
		String pass=request.getParameter("pas");
		 String sq="insert into learn values (?,?,?,?)";
		 try{
				Class.forName("com.ibm.db2.jcc.DB2Driver");
				Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/batch1","Avinash","natusvincere");
	     		PreparedStatement ps=c.prepareStatement(sq);
		        ps.setString(1, name);
				ps.setString(2, usern);
				ps.setString(3, pass);
				ps.setString(4, eid);
				ps.execute();
				request.getRequestDispatcher("login.jsp").include(request, response);
		 }
	catch(Exception e){
		e.printStackTrace();
	}
	}

}
