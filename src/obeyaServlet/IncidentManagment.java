package obeyaServlet;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beanjson.IncidentInformation;
import beanjson.cardInformation;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.ObjectMapper;

import database.MySqlStatmentCard;
import database.MySqlStatmentCardLog;
import database.MySqlStatmentIncident;
 
 
/**
 * Servlet implementation class CardManagment
 */
@SuppressWarnings("unused")
@WebServlet("/IncidentManagment")
public class IncidentManagment extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	    public IncidentManagment() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

    
     
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
        }
     
        @JsonIgnoreProperties(ignoreUnknown = true)
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        	
         
        	System.setProperty("file.encoding","UTF-8");
        	SetEncoding();
        	response.setContentType("application/json");
        	request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        	try {
				//System.out.println(request.getParameter("NewCard"));
				ObjectMapper mapper = new ObjectMapper();
			 
				
				String parametre=(String)request.getParameter("NewIncident");
				String jsonInString=new String(parametre.getBytes(),"UTF-8");
				jsonInString=jsonInString.replaceAll("'", "`");
				String SqlMode= request.getParameter("SqlMode");
				String EventId= request.getParameter("EventId");
				String EventDescription= request.getParameter("EventDescription");
				IncidentInformation obj =  mapper.readValue(jsonInString, IncidentInformation.class);
				MySqlStatmentIncident sqlDatabase = new MySqlStatmentIncident();
				//JSON from String to Object
				//System.out.println("jsonString: " + jsonInString);
				if (!SqlMode.equalsIgnoreCase("delete")){
					  //obj = mapper.readValue(jsonInString, cardInformation.class);
					  
					
					if (SqlMode.equalsIgnoreCase("insert")){
						sqlDatabase.SaveIncident(obj);
					}else if (SqlMode.equalsIgnoreCase("update")){
						sqlDatabase.updateIncident(obj);
					}
				}
				else{
					sqlDatabase.DeleteIncident(obj.getId());
					
				}
				
				 
				response.getWriter().write("0");
			} catch (Exception e) {
		        response.getWriter().write(e.getMessage());
		       
			}
        }
   

		public static String getDefaultCharEncoding(){
		    byte [] bArray = {'w'};
		    InputStream is = new ByteArrayInputStream(bArray);
		    InputStreamReader reader = new InputStreamReader(is);
		    String defaultCharacterEncoding = reader.getEncoding();
		    return defaultCharacterEncoding;
		}
	
	
		
	
		private static void SetEncoding(){
			String defaultCharacterEncoding = System.getProperty("file.encoding");
//	        System.out.println("defaultCharacterEncoding by property: " + defaultCharacterEncoding);
//	        System.out.println("defaultCharacterEncoding by code: " + getDefaultCharEncoding());
//	        System.out.println("defaultCharacterEncoding by charSet: " + Charset.defaultCharset());
//	        System.setProperty("file.encoding", "UTF-8");
//	        System.out.println("defaultCharacterEncoding by property after updating file.encoding : " + System.getProperty("file.encoding"));
//	        System.out.println("defaultCharacterEncoding by code after updating file.encoding : " + getDefaultCharEncoding());
//	        System.out.println("defaultCharacterEncoding by java.nio.Charset after updating file.encoding : " + Charset.defaultCharset());
//	
	 
	
		}
}






