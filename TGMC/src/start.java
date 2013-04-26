
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class for Servlet: start
 *
 */
 public class start extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
   Connection con;
   Statement st;
   ResultSet rs;
   String user1;
   String pass;
   ServletContext ctx;
	public start() {
		super();
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
		user1=request.getParameter("user");
		pass=request.getParameter("pwd");
		int flag=0;
		try {
		 HttpSession ses=request.getSession();
			rs = st.executeQuery("select * from dtls where username='"+user1+"'and password='"+pass+"'");
			while(rs.next())
			{  		    	flag=1;
			ses.setAttribute("userid", rs.getString("userid"));
	          ses.setAttribute("org", rs.getString("org"));
			ctx=getServletContext(); 
			ctx.setAttribute("userid",rs.getString("userid"));
			String cat=rs.getString("category");	
		    if(cat.equals("man")){
		    	RequestDispatcher rd = request.getRequestDispatcher("/First page(Man).jsp");
		        rd.forward(request, response);	     
		        }	
		    if(cat.equals("dis")){
		    	 RequestDispatcher rd = request.getRequestDispatcher("/First Page(Dis).jsp");
		    	rd.forward(request, response);	 
		     }
		     if(cat.equals("ret")){
		    	 RequestDispatcher rd = request.getRequestDispatcher("/First Page(Ret).jsp");
		    	rd.forward(request, response);	 
		     }
			}
			if(flag==0)
			{
				HttpSession ses1=request.getSession(); 
				ses1.removeAttribute("str");
				ses1.setAttribute("str","Invalid Username or Password");
				RequestDispatcher rd1 = request.getRequestDispatcher("http://localhost:8080/TGMC/index.jsp");
				response.sendRedirect("http://localhost:8080/TGMC/index.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.hashCode();
		}
	}   	  	    
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try {
             ctx=getServletContext();
			System.out.println("Driver loaded");
		    con = (Connection)ctx.getAttribute("Connection");
			 st = con.createStatement();  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}   }