package obeyaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import beanjson.cardInformation;

import com.fasterxml.jackson.databind.ObjectMapper;

import database.MySqlStatmentCard;
import database.MySqlStatmentCardLog;
import database.MySqlStatmentProjects;

/**
 * Servlet implementation class MySqlStatmentSteerco
 */
@WebServlet("/SteercoManagment")
public class SteercoManagment  extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SteercoManagment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.setProperty("file.encoding","UTF-8");
//    	response.setContentType("application/json");
//    	request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//    	try {
//			//System.out.println(request.getParameter("NewCard"));
//			ObjectMapper mapper = new ObjectMapper();
//		 
//			
//			String Project=request.getParameter("ProjectName");
//			String SqlMode= request.getParameter("SqlMode");
//			
//			if (SqlMode.equalsIgnoreCase("get")){
//				MySqlStatmentProjects Stmt = new MySqlStatmentProjects();
//				JSONArray obj = Stmt.GetProjectInformation(Project);
//				
//				response.getWriter().write(JSONArray);
//			}
//			else if (SqlMode.equalsIgnoreCase("update")){
//					response.getWriter().write("0");
//				}
//			
//			
//			
//			
//		} catch (Exception e) {
//	        response.getWriter().write(e.getMessage());
//	       
//		}
	}

}
