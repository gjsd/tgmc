import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class listener implements ServletContextListener {

	Connection con;
	Statement st;
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		ServletContext ctx=sce.getServletContext();
	
		try{
			st.executeUpdate("drop table DTLS");
			st.executeUpdate("drop table DTLS1");
			//st.executeUpdate("drop table MANUFACTURERS");
			//st.executeUpdate("drop table DISTRIBUTORS");
			//st.executeUpdate("drop table RETAILERS");
			st.executeUpdate("drop table ORDERS");
			st.executeUpdate("drop table USERS");
	        st.executeUpdate("drop table FEEDBACK");
	        st.executeUpdate("drop table PRODUCTS");   
	        st.executeUpdate("drop table ACCORD");
	        st.executeUpdate("drop table DECORD");
	        st.executeUpdate("drop table GenBill");
	        st.executeUpdate("drop table Notice");
			con.close();    
		} catch (Exception e) {   
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Connection Closed");
     
	} 

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub 
		ServletContext ctx=sce.getServletContext();
		try{ 
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			System.out.println("Driver loaded in liostener");
		    con = DriverManager.getConnection("jdbc:db2://localhost:50000/TGMC","Chatur","infosys");
			 st = con.createStatement();  
			    
			    st.executeUpdate("create table dtls ( category varchar(50),userid varchar(50),username varchar(50),password varchar(50),firstname varchar(50),lastname varchar(50),gender varchar(50),country varchar(50),org varchar(20),frn varchar(12),tel varchar(12),fax varchar(12),email varchar(30),add varchar(100),hint varchar(30))");
			    st.executeUpdate("create table dtls1 ( userid varchar(50),file xml)");
				//st.executeUpdate("create table manufacturers ( userid varchar(50),org varchar(20),product varchar(20),procode varchar(20),sales big)");
		  		//st.executeUpdate("create table distributors ( userid varchar(50),username varchar(50),password varchar(50),firstname varchar(50),lastname varchar(50),gender varchar(2),org varchar(20),country varchar(50),frn integer,tel integer,email varchar(30),add varchar(30))");
			 	//st.executeUpdate("create table retailers ( userid varchar(50),username varchar(50),password varchar(50),firstname varchar(50),lastname varchar(50),gender varchar(2),org varchar(20),country varchar(50),frn integer,tel integer,email varchar(30),add varchar(30))");
				st.executeUpdate("create table orders ( userid1 varchar(50),cat varchar(30),product varchar(50), procode varchar(50),qty varchar(50),userid2 varchar(50),order varchar(30),delivery varchar(30),mode varchar(50))"); 
				st.executeUpdate("create table users ( userid varchar(50),cat varchar(30),procode varchar(50) NOT NULL,product varchar(50),qty varchar(50),price varchar(50),primary key (procode))");	   
	            st.executeUpdate("create table feedback ( userid varchar(50),dat varchar(30) ,cat varchar(30),product varchar(50),procode varchar(50),feedback varchar(100))");
	            st.executeUpdate("create table products ( userid varchar(50),cat varchar(30),proname varchar(50),procode varchar(50) NOT NULL,primary key (procode))");		
				st.executeUpdate("create table accord ( userid1 varchar(50),cat varchar(30),product varchar(50), procode varchar(50),qty varchar(50),userid2 varchar(50),order varchar(30),delivery varchar(30),mode varchar(50))"); 
				st.executeUpdate("create table decord( userid1 varchar(50),cat varchar(30),product varchar(50), procode varchar(50),qty varchar(50),userid2 varchar(50),order varchar(30),delivery varchar(30),mode varchar(50))");
				st.executeUpdate("create table GenBill (org1 varchar(30),org2 varchar(30),product varchar(30),procode varchar(30),qty varchar(20),ppu varchar(20),amt varchar(20),status varchar(50))");
				st.executeUpdate("create table Notice (userid2 varchar(30),org varchar(30),product varchar(30),procode varchar(30),mode varchar(100),prodetails varchar(100),dt varchar(50))");
				ctx.setAttribute("Connection",con);
				System.out.println("After table creation");
		          HashMap user=new HashMap();   
                 ctx.setAttribute("user", user);       
                   
		    ctx.setAttribute("man",1000);  
		    ctx.setAttribute("dis",1000);  
		    ctx.setAttribute("ret",1000); 
			 
		}  
		catch(Exception e){
			e.printStackTrace();  
		}
		
	} 
}
