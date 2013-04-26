

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: VDC
 *
 */
 public class VDC extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
   Connection con;
   ResultSet rs;
   Statement st;
   String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;

   int i;
	public VDC() {
		super();
	} 
	
	/* (non-Javadoc)
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ses;
		ses=request.getSession();
    	String s5= request.getParameter("fname");
		String s6= request.getParameter("lname");
		String s7= request.getParameter("sex");
    	String s8= request.getParameter("selCountry");
		String s9= request.getParameter("org");
		String s11=request.getParameter("tel");
		String s12=request.getParameter("fx");
		String s13=request.getParameter("em");
		String s14=request.getParameter("add");
		String s15=request.getParameter("fname");
		try{
			String sql = "UPDATE DTLS SET firstname = ?,lastname = ?,gender = ?,country = ?,org = ?,tel = ?,fax = ?,email = ?,add = ? WHERE frn = ?";
	        PreparedStatement prest = con.prepareStatement(sql);
		//Statement stmt = con.createStatement(
	           // ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	       // ResultSet rs = stmt.executeUpdate("update * FROM dtls where frn='"+ses.getAttribute("col10")+"'");
		
		
		System.out.println("Entered into table");
		System.out.println(request.getParameter("fname"));
		prest.setString(1,request.getParameter("fname"));
		System.out.println(request.getParameter("lname"));
		prest.setString(2,request.getParameter("lname"));
		prest.setString(3,request.getParameter("sex"));
		prest.setString(4,request.getParameter("selCountry"));
		prest.setString(5,request.getParameter("org"));
		prest.setString(6,request.getParameter("tel"));
		prest.setString(7,request.getParameter("fx"));
		prest.setString(8,request.getParameter("em"));
		prest.setString(9,request.getParameter("add"));  
		prest.setString(10,(String)ses.getAttribute("col10"));
		prest.executeUpdate();
		RequestDispatcher rd = request.getRequestDispatcher("/VDC.jsp");
    	rd.forward(request, response);
	}
		catch(Exception e){
			e.printStackTrace();
        }
  }  	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		ServletContext ctx=getServletContext();
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			System.out.println("Driver laoded VDC java");
		    con = (Connection)ctx.getAttribute("userid");
			 st = con.createStatement();  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
}