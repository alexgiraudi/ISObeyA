package database;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.jdbc.ResultSetMetaData;


import beanjson.ProjectTagInfo;
import beanjson.cardInformation;
import beanjson.projectInformation;



public class MySqlStatmentProjects extends MySqlGenericStatment{
	
	public MySqlStatmentProjects() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentProjects Class intance On");
	}
	
	
	


public ArrayList<String> GetProjectsDashboard() throws Exception {
		
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String TemplateJSP = "<tr>"
				+ "<td style='width:20px;' valign='middle'>"
				+ "<span Title='SaveProject' style='font-size: 10px;' class='glyphicon glyphicon-save overRed'/>"
				+ "</td>"
				+ "<td style='width:20px;' valign='middle'>"
				+ "<span Title='OpenProject' style='font-size: 10px;' class='glyphicon glyphicon-share overOrange'/>"
				+ "</td>"
				+ "<td valign='middle' title='Project' contenteditable='true' style='width:300px;font-size: 14px'>%ProjectName%</td>"
				+ "<td valign='middle' style='width:30px;color:blue;font-size: 11px' title='IdProject'>%Id%</td>"
				+ "<td valign='middle' align='left' style='width:80px;' ><div title='Global' class='%ClassGlobal%'></div></td>"
				+ "<td valign='middle' style='width:100px;'><div Title='InfoTag' class=' %ClassPlanning%'></div></td>"
				+ "<td valign='middle' style='width:100px;'><div Title='InfoTag' class=' %ClassPurchasing%'></div></td>"
				+ "<td valign='middle' style='width:100px;'><div Title='InfoTag' class=' %ClassDesign%'></div></td>"
				+ "<td valign='middle' style='width:100px;'><div Title='InfoTag' class=' %ClassBuild%'></div></td>"
				+ "<td valign='middle' style='width:100px;'><div Title='InfoTag' class=' %ClassRollout%'></div> </td>"
				+ "<td valign='middle' class='Remark ' contenteditable='true' style='width:500px;color:darkgrey;'>%remark%</td>"
				+ "<td valign='middle' contenteditable='true' class='KPI ' style='width:50px;color:darkblue;'>%KPI%</td>"
				+ "<td valign='middle'>"
				+ "<span Title='SaveKPI' style='font-size: 10px;' class='glyphicon glyphicon-map-marker overRed'/>"
				+ "</td>"
				+ "<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='%Tendance%'></span></td>"
				+ "<td valign='middle'  contenteditable='true' style='font-size: 11px'>%DueDate%</td>"
				+ "</tr>";
		
		ArrayList<String> tabResult = new ArrayList<String>();
		try {
			rs = stmtProject.executeQuery("select * from projects where Status!='Closed' ORDER BY Name ASC;");
			while (rs.next()) {
				
				String id = rs.getString("Id");
				String ProjectName = rs.getString("Name");
				String KPIGlobal = rs.getString("KPIGlobal");
				String KPIBudget = rs.getString("KPIBudget");
				String KPIPlanning = rs.getString("KPIPlanning");
				String KPIDesign = rs.getString("KPIDesign");
				String KPIRFP = rs.getString("KPIRFP");
				String KPIPurchasing = rs.getString("KPIPurchasing");
				String KPIProvisioning = rs.getString("KPIProvisioning");
				String KPIBuild = rs.getString("KPIBuild");
				String KPIRollout = rs.getString("KPIRollout");
				String KPIRemarks = rs.getString("KPIRemarks");
				int KPI = rs.getInt("KPI");
				String Tendance = rs.getString("Tendance");
				String KPIGolive = rs.getString("KPIGolive");
				
				
				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("%ProjectName%", ProjectName);
				NewLine=NewLine.replaceAll("%Id%", id);
				NewLine=NewLine.replaceAll("%IdProject%", id);
				
				NewLine=NewLine.replaceAll("%ClassGlobal%", KPIGlobal);
		 
				NewLine=NewLine.replaceAll("%ClassPlanning%", KPIPlanning);
				NewLine=NewLine.replaceAll("%ClassDesign%", KPIDesign);
				NewLine=NewLine.replaceAll("#Id", KPIRFP);
				NewLine=NewLine.replaceAll("%ClassPurchasing%", KPIPurchasing);
				 
				NewLine=NewLine.replaceAll("%ClassBuild%", KPIBuild);
				NewLine=NewLine.replaceAll("%ClassRollout%", KPIRollout);
				NewLine=NewLine.replaceAll("%remark%", KPIRemarks);
				NewLine=NewLine.replaceAll("%KPI%",String.valueOf(KPI));
				NewLine=NewLine.replaceAll("%Tendance%", String.valueOf(Tendance));
				NewLine=NewLine.replaceAll("%DueDate%", KPIGolive);
				
				//System.out.println(NewLine);
			
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtProject != null) stmtProject.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return tabResult;
	}
	public ArrayList<String> GetProjects(String pView) throws Exception {
		
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String TemplateJSP = null;
		if (pView=="User"){
			TemplateJSP = "<a class='dropdown-item' href='./IsObeya-SteercoSlideShow-UserHumor.jsp?ProjectName=#ProjectName'>#Id - #ProjectName</a>";
		}
		else
			TemplateJSP = "<a class='dropdown-item' href='./IsObeya-SteercoSlideShow-Obeya.jsp?ProjectName=#ProjectName'>#Id - #ProjectName</a>";
		
		ArrayList<String> tabResult = new ArrayList<String>();
		try {
			rs = stmtProject.executeQuery("select * from projects where Status!='Closed';");
			while (rs.next()) {
				String id = rs.getString("iD");
				String ProjectName = rs.getString("Name");
				
				
				//System.out.println("ID: " + id + ", Project Name: " + ProjectName);
				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("#Id", id);
				NewLine=NewLine.replaceAll("#ProjectName", ProjectName);
				//System.out.println(NewLine);
			
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtProject != null) stmtProject.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return tabResult;
	}
	
	
public int GetProjectsCount(String Status) throws Exception {
		
		String sqlqueryWithFilter = "select count(*) as count from projects where Status='%Status%';";
		String sqlqueryWithoutFilter = "select count(*) as count from projects;";
		String sqlquery="";
		if (Status.equalsIgnoreCase("all"))
			sqlquery=sqlqueryWithoutFilter;
		else
			sqlquery=sqlqueryWithFilter;
		
		ResultSet rs = null;
		int Nb = 0;
		Statement stmtProject =GetStatement();  
		try {
			
			
			sqlquery=sqlquery.replaceAll("%Status%", Status);
			rs = stmtProject.executeQuery(sqlquery);rs.next();
			Nb=rs.getInt("count");
			
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return Nb;
	}

	public boolean updateProject(projectInformation pProject) throws Exception {
		String sqlUpdate  = "update ISObeyaDB.projects SET Name='%Name%', Status='%Status%', KPIGlobal='%KPIGlobal%', KPIBudget='%KPIBudget%', KPIPlanning='%KPIPlanning%', KPIDesign='%KPIDesign%', KPIRFP='%KPIRFP%',KPIPurchasing='%KPIPurchasing%',KPIProvisioning='%KPIProvisioning%',KPIBuild='%KPIBuild%',KPIRollout='%KPIRollout%',KPIRemarks='%KPIRemarks%',KPI='%KPI%',Tendance='%Tendance%',KPIGolive='%KPIGolive%' where Id=%IdProjet%;"; 

	
		boolean success= true;	
		
		Statement stmtProject =GetStatement();
		int rs ;
		try {
			sqlUpdate= sqlUpdate.replaceAll("%Name%",pProject.getProjectName());
			sqlUpdate= sqlUpdate.replaceAll("%Status%",pProject.getStatus());
			sqlUpdate= sqlUpdate.replaceAll("%KPIGlobal%",pProject.getKPIGlobal());
			sqlUpdate= sqlUpdate.replaceAll("%KPIBudget%",pProject.getKPIBudget());
			sqlUpdate= sqlUpdate.replaceAll("%KPIPlanning%",pProject.getKPIPlanning());
			sqlUpdate= sqlUpdate.replaceAll("%KPIDesign%",pProject.getKPIDesign());
			sqlUpdate= sqlUpdate.replaceAll("%KPIPurchasing%",pProject.getKPIPurchasing());
			sqlUpdate= sqlUpdate.replaceAll("%KPIProvisioning%",pProject.getKPIProvisioning());
			sqlUpdate= sqlUpdate.replaceAll("%KPIBuild%",pProject.getKPIBuild());
			sqlUpdate= sqlUpdate.replaceAll("%KPIRollout%",pProject.getKPIRollout());
			sqlUpdate= sqlUpdate.replaceAll("%KPIRemarks%",pProject.getKPIRemarks());
			sqlUpdate= sqlUpdate.replaceAll("%KPI%",String.valueOf(pProject.getKPI()));
			sqlUpdate= sqlUpdate.replaceAll("%Tendance%",pProject.getTendance());
			sqlUpdate= sqlUpdate.replaceAll("%KPIGolive%",pProject.getKPIGolive());
			sqlUpdate= sqlUpdate.replaceAll("%IdProjet%",String.valueOf(pProject.getId()));
			System.out.println("********* " + sqlUpdate);
			
			rs = stmtProject.executeUpdate(sqlUpdate);
			//System.out.println(rs);
			
		} catch (SQLException e) {
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			e.printStackTrace();
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);

		
		} finally {
			
//			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return success;
	}
	
	public boolean AddKPIValue(int Value, String Project, String Event)throws Exception {
		String sqlUpdate  = "insert into ISObeyaDB.KPIEvolution (Project, Week,value,EventDescription) values('%ProjectName%',%Week%,%KPI%,'%Remark%');"; 

		
		boolean success= true;	
		Statement stmtProject =GetStatement();
		int rs ;
		try {
			sqlUpdate= sqlUpdate.replaceAll("%ProjectName%",Project);
			sqlUpdate= sqlUpdate.replaceAll("%Week%",String.valueOf(getWeek()));
			sqlUpdate= sqlUpdate.replaceAll("%KPI%",String.valueOf(Value));
			sqlUpdate= sqlUpdate.replaceAll("%Remark%",Event);
			
			System.out.println("********* " + sqlUpdate);
			
			rs = stmtProject.executeUpdate(sqlUpdate);
			//System.out.println(rs);
			
		} catch (SQLException e) {
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			e.printStackTrace();
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);

		
		} finally {
			
//			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return success;
	}
	
	public static int getWeek()throws Exception {
        return Calendar.getInstance().get(Calendar.WEEK_OF_YEAR);
    }
	
	public static String getShortDate(String StrDate) throws ParseException{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date inputDate = formatter.parse(StrDate);
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-YYYY");
		return dateFormat.format(inputDate);
	}
	
	public ArrayList<String> getKPI(String Project)throws Exception {
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String TemplateJSP = null;
			TemplateJSP = "<li><a href='#0' data-date='%Date%' class=''>%Week%</a></li>";
		String query="SELECT * FROM ISObeyaDB.KPIEvolution where project='%Project%' order by week asc;".replaceAll("%Project%", Project);
		ArrayList<String> tabResult = new ArrayList<String>();
		try {
			rs = stmtProject.executeQuery(query);
			while (rs.next()) {
				String ProjectName = rs.getString("Project");
				String Week = rs.getString("Week");
				String KPI = rs.getString("Value");
				String Event = rs.getString("EventDescription");
				String Date = rs.getString("Date");
				
				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("%Date%", getShortDate(Date));
				NewLine=NewLine.replaceAll("%Week%", "W"+Week);
				
				if (rs.isLast()){
					NewLine=NewLine.replaceAll("class=''", "class='selected'");
				}
				//System.out.println(NewLine);
			
				tabResult.add(NewLine);
			}
			
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtProject != null) stmtProject.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return tabResult;
	}
	
public ArrayList<String> getSubKPI(String Project)throws Exception {
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String TemplateJSP = null;
			TemplateJSP = "<li class='' data-date='%Week%'>"
					+ "<em>%Date%<p>%Event% %KPI%</p></em>"
					+ "</li>";
		String query="SELECT * FROM ISObeyaDB.KPIEvolution where project='%Project%' order by week asc;".replaceAll("%Project%", Project);
		ArrayList<String> tabResult = new ArrayList<String>();
		try {
			rs = stmtProject.executeQuery(query);
			while (rs.next()) {
				String ProjectName = rs.getString("Project");
				String Week = rs.getString("Week");
				String KPI = rs.getString("Value");
				String Event = rs.getString("EventDescription");
				String Date = rs.getString("Date");
				
				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("%Week%", getShortDate(Date));
				NewLine=NewLine.replaceAll("%Date%", Date);
				NewLine=NewLine.replaceAll("%Event%", Event);
				NewLine=NewLine.replaceAll("%KPI%", KPI);
				if (rs.isLast()){
					NewLine=NewLine.replaceAll("class=''", "class='selected'");
				}
				//System.out.println(NewLine);
			
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtProject != null) stmtProject.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return tabResult;
	}


	public JSONArray GetProjectInformation(String pProjectName) throws Exception {
		
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		JSONArray obj = new JSONArray();
		try {
			rs = stmtProject.executeQuery("select * from projects where Project=%pProjectName%;".replaceAll("%pProjectName%", pProjectName));
			obj=convertToJSON(rs);
			
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return obj;
	}
	
	public String GetProjectInfoFromField(String pProjectName, String pField)throws Exception {
		
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String lFieldValue=null;
		String SqlQuery = "select * from ISObeyaDB.projects where Name='%pProjectName%';".replaceAll("%pProjectName%", pProjectName);
		try {
			rs = stmtProject.executeQuery(SqlQuery);
			while (rs.next()) {
				lFieldValue=rs.getString(pField);
			}
			
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return lFieldValue;
	}
	
	
	
	
	public String GetTagInfoFromField(String pProjectName, String pField)throws Exception {
		
		Statement stmtProject =GetStatement();
		ResultSet rs = null;
		String lFieldValue=null;
		String SqlQuery = "select * from ISObeyaDB.TagInfosProject where ProjectName='%pProjectName%' and TagName='%TagName%';".replaceAll("%pProjectName%", pProjectName);
		SqlQuery=SqlQuery.replaceAll("%TagName%", pField);
		try {
			rs = stmtProject.executeQuery(SqlQuery);
			while (rs.next()) {
				lFieldValue=rs.getString("TagValue");
			}
			
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return lFieldValue;
	}
	private projectInformation SetBeanProject(ResultSet resultSet){
		
//		projectInformation theProject = new projectInformation();
//		theProject.set
		
		
		
		return null;
		
	}
	
	 private JSONArray convertToJSON(ResultSet resultSet)
	            throws Exception {
	        JSONArray jsonArray = new JSONArray();
	        while (resultSet.next()) {
	            int total_rows = resultSet.getMetaData().getColumnCount();
	            for (int i = 0; i < total_rows; i++) {
	                JSONObject obj = new JSONObject();
	                obj.put(resultSet.getMetaData().getColumnLabel(i + 1)
	                        .toLowerCase(), resultSet.getObject(i + 1));
	                jsonArray.add(obj);
	            }
	        }
	        return jsonArray;
	 }
	 
	 public boolean updateInfoTagProject(ProjectTagInfo pProject) throws Exception {
		 

		 	String sqlUpdateRef = "INSERT INTO ISObeyaDB.TagInfosProject (ProjectName,TagName, TagValue) VALUES ('%ProjetName%','%TagName%','%TagValue%')  ON DUPLICATE KEY UPDATE TagValue='%TagValue%';";
		 	sqlUpdateRef=sqlUpdateRef.replaceAll("%ProjetName%", pProject.getProjectName());
			boolean success= true;	
			
			Statement stmtProject =GetStatement();
			int rs ;
			try {
				
			 
				    String sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mDecision1");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmDecision1());
					rs = stmtProject.executeUpdate(sqlUpdate); 
				        
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mDecision2");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmDecision2());
					rs = stmtProject.executeUpdate(sqlUpdate); 
				   
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mDecision3");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmDecision3());
					rs = stmtProject.executeUpdate(sqlUpdate); 
				
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mInfo1");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmInfo1());
					rs = stmtProject.executeUpdate(sqlUpdate); 
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mInfo2");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmInfo2());
					rs = stmtProject.executeUpdate(sqlUpdate); 
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mInfo3");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmInfo3());
					rs = stmtProject.executeUpdate(sqlUpdate); 
					
					 
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mMainLabelKPI");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmMainLabelKPI());
					rs = stmtProject.executeUpdate(sqlUpdate); 
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortLabelKPI1");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortLabelKPI1());
					rs = stmtProject.executeUpdate(sqlUpdate); 
				
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortLabelKPI2");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortLabelKPI2());
					rs = stmtProject.executeUpdate(sqlUpdate);
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortLabelKPI3");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortLabelKPI3());
					rs = stmtProject.executeUpdate(sqlUpdate);
					
					
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortKPI1");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortKPI1());
					rs = stmtProject.executeUpdate(sqlUpdate); 
				
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortKPI2");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortKPI2());
					rs = stmtProject.executeUpdate(sqlUpdate);
					
					sqlUpdate = sqlUpdateRef.replaceAll("%TagName%", "mShortKPI3");
					sqlUpdate = sqlUpdate.replaceAll("%TagValue%", pProject.getmShortKPI3());
					rs = stmtProject.executeUpdate(sqlUpdate);
					
					
				 
				
			} catch (SQLException e) {
					throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
			} catch (Exception e) {
				e.printStackTrace();
				 throw new Exception("Message: " + e.getMessage() + ". "  , e);

			
			} finally {
				
//				try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//				try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
			return success;
		}
	 
	 
}
