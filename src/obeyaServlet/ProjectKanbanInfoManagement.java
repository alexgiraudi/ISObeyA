package obeyaServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import beanjson.projectInformation;
import database.MySqlStatmentProjects;

/**
 * Servlet implementation class ProjectKanbanInfoManagement
 */
@WebServlet("/ProjectKanbanInfoManagement")
public class ProjectKanbanInfoManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectKanbanInfoManagement() {
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
		response.setContentType("application/json");
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    	try {
			
    		String Result="";
    		String SQL=(String)request.getParameter("SqlMode");
			String pProject=(String)request.getParameter("NewProject");
			String pTagName=(String)request.getParameter("TagName");
			String pTagValue=(String)request.getParameter("TagValue");
			
			if (SQL.equalsIgnoreCase("Get")){
				MySqlStatmentProjects sqlDatabase = new MySqlStatmentProjects();
				Result = sqlDatabase.GetProjectInfoFromField(pProject, pTagName);
				Result=Result.replaceAll("/", "-");
			}
			
			
			
			response.getWriter().write(Result);
		} catch (Exception e) {
	
			 response.getWriter().write(e.getMessage());
	       
		}
	}

}
