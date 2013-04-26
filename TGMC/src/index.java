

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 * Servlet implementation class for Servlet: Details
 *
 */
 public class index extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
   Connection con;
   Statement st;
   ResultSet rs;
   ServletContext ctx;
   HttpSession ses;
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public index() {
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
		try {
			System.out.println("in do post"+request.getParameter("fname"));
			String s2=null;
			String s5= request.getParameter("fname");
			String s6= request.getParameter("lname");
			String s7= request.getParameter("sex");
			String s3= request.getParameter("un");
			String s4= request.getParameter("pass");
			String s1= request.getParameter("cat");
			String s8= request.getParameter("selCountry");
			String s10= request.getParameter("firm");
			String s9= request.getParameter("org");
			String s11=request.getParameter("tel");
			String s12=request.getParameter("fx");
			String s13=request.getParameter("em");
			String s14=request.getParameter("add"); 
			ctx=getServletContext(); 
			s2= request.getParameter("cat")+(ctx.getAttribute(request.getParameter("cat"))).toString();
			int i=Integer.parseInt(ctx.getAttribute(request.getParameter("cat")).toString());
			ctx.removeAttribute(request.getParameter("cat"));
			ctx.setAttribute(request.getParameter("cat"), ++i); 
			//List l=new LinkedList();
			//ListIterator r=l.listIterator();
			
			String str="<?xml version=\"1.0\"?>" +
			"<member>"+ 
			"<userid>"+s2+"</userid>"+
			"<firstname>"+request.getParameter("fname")+"</firstname>"+
			"<lastname>"+request.getParameter("lname")+"</lastname>"+
			"<gender>"+request.getParameter("sex")+"</gender>"+
			"<username>"+request.getParameter("un")+"</username>"+
			"<password>"+request.getParameter("pass")+"</password>"+
		    "<country>"+request.getParameter("selCountry")+"</country>"+
		    "<category>"+request.getParameter("cat")+"</category>"+
			"<org>"+request.getParameter("org")+"</org>"+
			"<frn>"+request.getParameter("firm")+"</frn>"+
			"<tel>"+request.getParameter("tel")+"</tel>"+
			"<fax>"+request.getParameter("fx")+"</fax>"+
			"<email>"+request.getParameter("em")+"</email>"+
			"<add>"+request.getParameter("add")+"</add>"+
			"</member>";
			 String str1=s2;
	         System.out.println(str1);
	         st.executeUpdate("insert into dtls1 values('"+str1+"','"+str+"')");

			
		    st.executeUpdate("insert into DTLS values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+request.getParameter("hint")+"')");
		    String cat=s1;	
			ses=request.getSession();
			ses.setAttribute("userid",s2);
	          ses.setAttribute("col1",s1);
	          ses.setAttribute("col2",s2); 
	          ses.setAttribute("col3",s3);
	          ses.setAttribute("col4",s4);
	          ses.setAttribute("col5",s5);
	          ses.setAttribute("col6",s6);
	          ses.setAttribute("col7",s7);
	          ses.setAttribute("col8",s8);
	          ses.setAttribute("col9",s9);
	          ses.setAttribute("col10",s10);
	          ses.setAttribute("col11",s11);
	          ses.setAttribute("col12",s12);
	          ses.setAttribute("col13",s13);
	          ses.setAttribute("col14",s14);
	          ctx.setAttribute("userid", s2);
	          ses.setAttribute("org", s14);
	          HashMap user = (HashMap) ctx.getAttribute("user");
	          user.put(s2, s9);
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
				
		     
	          } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		System.out.println("Driver loaded in index.java");
		ServletContext ctx=getServletContext();
		con=(Connection)ctx.getAttribute("Connection");
		try{
		st=con.createStatement();
		}
	catch(Exception e){
		e.printStackTrace();
	}

	}     
}