package obeyaServlet;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import beanjson.KPIInformation;
import database.MySqlStatmentProjects;

/**
 * Servlet implementation class KPIServlet
 */
@WebServlet("/KPIManagment")
public class KPIManagment extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KPIManagment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.setProperty("file.encoding","UTF-8");
    	SetEncoding();
    	response.setContentType("application/json");
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    	try {
			ObjectMapper mapper = new ObjectMapper();
		 
			
			String parametre=(String)request.getParameter("NewKPI");
			String jsonInString=new String(parametre.getBytes(),"UTF-8");
			String SqlMode= request.getParameter("SqlMode");
			KPIInformation obj =  mapper.readValue(jsonInString, KPIInformation.class);
			MySqlStatmentProjects sqlDatabase = new MySqlStatmentProjects();
			//JSON from String to Object
			//System.out.println("jsonString: " + jsonInString);
			if (!SqlMode.equalsIgnoreCase("delete")){
				if (SqlMode.equalsIgnoreCase("insert")){
					sqlDatabase.AddKPIValue(obj.getKPI(), obj.getPojectName(), obj.getEvent());
				}else if (SqlMode.equalsIgnoreCase("update")){
					
				}
			}
			else{
				
				
			}
			
			response.getWriter().write("0");
		} catch (Exception e) {
	
			//e.printStackTrace();
			//System.out.println(e.getMessage());
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
//        System.out.println("defaultCharacterEncoding by property: " + defaultCharacterEncoding);
//        System.out.println("defaultCharacterEncoding by code: " + getDefaultCharEncoding());
//        System.out.println("defaultCharacterEncoding by charSet: " + Charset.defaultCharset());
//        System.setProperty("file.encoding", "UTF-8");
//        System.out.println("defaultCharacterEncoding by property after updating file.encoding : " + System.getProperty("file.encoding"));
//        System.out.println("defaultCharacterEncoding by code after updating file.encoding : " + getDefaultCharEncoding());
//        System.out.println("defaultCharacterEncoding by java.nio.Charset after updating file.encoding : " + Charset.defaultCharset());
//
// 

	}
}

