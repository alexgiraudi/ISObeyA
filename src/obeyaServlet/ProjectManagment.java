package obeyaServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beanjson.cardInformation;
import beanjson.projectInformation;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.ObjectMapper;

import database.MySqlStatmentCard;
import database.MySqlStatmentCardLog;
import database.MySqlStatmentProjects;
 
 
/**
 * Servlet implementation class CardManagment
 */
@SuppressWarnings("unused")
@WebServlet("/ProjectManagment")
public class ProjectManagment extends EncodingServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	    public ProjectManagment() {
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
				//System.out.println(request.getParameter("NewProject"));
				ObjectMapper mapper = new ObjectMapper();
			 
				
				String parametre=(String)request.getParameter("NewProject");
				String jsonInString=new String(parametre.getBytes(),"UTF-8");
				jsonInString=jsonInString.replaceAll("'", "`");
				String SqlMode= request.getParameter("SqlMode");
				projectInformation obj =  mapper.readValue(jsonInString, projectInformation.class);
				MySqlStatmentProjects sqlDatabase = new MySqlStatmentProjects();
				//JSON from String to Object
				if (SqlMode.equalsIgnoreCase("update")){
					sqlDatabase.updateProject(obj);
				}
				
				
				response.getWriter().write("0");
			} catch (Exception e) {
		
				 response.getWriter().write(e.getMessage());
		       
			}
        }
    }

