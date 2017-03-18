package obeyaServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.MySqlStatmentCardLog;

/**
 * Servlet implementation class AttributeServlet
 */
@WebServlet("/AttributeServlet")
public class CardLogManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardLogManagement() {
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
		
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			try {
				String LogCardId=request.getParameter("CardId");
				if (LogCardId!=null){
					java.util.List<String> listLog = new java.util.ArrayList<String>() ;
					MySqlStatmentCardLog CardLogStmt = new MySqlStatmentCardLog(); 
					listLog=CardLogStmt.GetLog(LogCardId);
					for (int i=0;i<listLog.size();i++){
						out.println(listLog.get(i).toString());
					}
				}
				 response.getWriter().write(0);
			} catch (Exception e) {
				 response.getWriter().write(e.getMessage());
			}
	
     }

}
