package obeyaServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.MySqlStatmentCardLog;

/**
 * Servlet implementation class LogCardManagment
 */
@WebServlet("/LogCardManagment")
public class LogCardManagment extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogCardManagment() {
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
			request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			try {
				 
				String parametre=(String)request.getParameter("CardId");
				String LogCardId=new String(parametre.getBytes(),"UTF-8");
				if (LogCardId!=null){
					java.util.List<String> listLog = new java.util.ArrayList<String>() ;
					MySqlStatmentCardLog CardLogStmt = new MySqlStatmentCardLog(); 
					listLog=CardLogStmt.GetLog(LogCardId);
					for (int i=0;i<listLog.size();i++){
						out.println(listLog.get(i).toString());
					}
				}
				 
			} catch (Exception e) {
				e.printStackTrace();
		        response.getWriter().write("Message: " + e.getMessage() + ". "  );
			}
	
     }

}
