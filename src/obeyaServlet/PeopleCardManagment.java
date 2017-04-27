package obeyaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beanjson.peopleProjectInformation;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.ObjectMapper;

import database.MySqlStatmentCardLog;
import database.MySqlStatmentPeopleCard;
 
 
/**
 * Servlet implementation class CardManagment
 */
@WebServlet("/PeopleCardManagment")
public class PeopleCardManagment extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	    public PeopleCardManagment() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

    
     
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
        }
     
        @JsonIgnoreProperties(ignoreUnknown = true)
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        	 
        	response.setContentType("application/json");
        	request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        	try {
				//System.out.println(request.getParameter("NewCardPeople"));
				ObjectMapper mapper = new ObjectMapper();
				
				String jsonInString=(String)request.getParameter("NewCardPeople");
				//System.out.println(jsonInString);
			 
				String SqlMode= request.getParameter("SqlMode");
				String EventId= request.getParameter("EventId");
				String EventDescription = request.getParameter("EventDescription");
				
				//JSON from String to Object
				
				peopleProjectInformation obj = mapper.readValue(jsonInString, peopleProjectInformation.class);
				MySqlStatmentPeopleCard sqlDatabase = new MySqlStatmentPeopleCard();
				
				sqlDatabase.updatePeopleCard(obj,SqlMode);
			
				/* Log Management***/
	        	MySqlStatmentCardLog mLogObj = new MySqlStatmentCardLog();
	        	mLogObj.SaveLog(obj.getOwner(), EventId, EventDescription, jsonInString);
				response.getWriter().write("0");
			} catch (Exception e) {
				 response.getWriter().write(e.getMessage());
		       
			}
        }
    }

