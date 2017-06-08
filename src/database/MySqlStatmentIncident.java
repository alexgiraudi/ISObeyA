package database;




import java.rmi.server.UID;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import com.mysql.jdbc.PreparedStatement;

import beanjson.IncidentInformation;
import beanjson.cardInformation;



public class MySqlStatmentIncident extends MySqlGenericStatment{
	public static final int MYSQL_DUPLICATE_PK = 1062;
	private String JspReferenceCard ="<div Style='' class='cardEdit' id='cardTemplate' tabindex='0' >"
			+ "<div class='card__header'><div class='estimator'><button class='%Priority%' type='button' title='Priority'>ValPriority</button></div>"
			+ "<i class='glyphicon glyphicon-fire Rouge'></i>"
			+ "<div class='card__actions'> "
			+ " <button title='EditIncident'> <i class='glyphicon glyphicon-edit'></i> </button>"
			+ " <button id='deleteTemplate' title='DeleteIncident'><i class='glyphicon glyphicon-off'></i></button>"
			+ "</div></div><div class='card__body story' id='CardBodyTemplateAddCard'>"
			+ "<div class='card__body-content'><div class='card__body-title' title='ContentCard' id='CardBodyValueTemplate'>ValAction</div> "
			+ "</div></div></div>";
	
	public MySqlStatmentIncident() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentIncident Class intance On");
	}
	
	public boolean SaveIncident(IncidentInformation pNewCard) throws Exception {
		
		String sqlUpdate = "INSERT INTO ISObeyaDB.Incidents(`IncidentId`,`Project`,`Priority`,`Description`,`Raf`,`PriorityClass`)"
				+ "VALUES ('%CardId: %','%Project: %','%Priority: %','%Description: %','%PriorityClass: %');";
				
		boolean success= true;		
		Statement stmtCard =GetStatement(); 
		try {
			if (pNewCard==null){
				success= false;
			}else {
				sqlUpdate= sqlUpdate.replaceAll("%CardId: %",pNewCard.getId());
				sqlUpdate= sqlUpdate.replaceAll("%Project: %",pNewCard.getProjectName());
		 

				sqlUpdate= sqlUpdate.replaceAll("%Description: %",pNewCard.getDescription());

				sqlUpdate= sqlUpdate.replaceAll("%Charge: %",String.valueOf(pNewCard.getDuration()));
 

				sqlUpdate= sqlUpdate.replaceAll("%PriorityClass: %",pNewCard.getPriorityClass());
				System.out.println("********* " + sqlUpdate);
			}
			  
			  stmtCard.executeUpdate(sqlUpdate);
			
			
			} catch (SQLException e) {
				if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
			        throw new Exception("Error : Duplicate user entry !", e);
				}  
				else
					throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
			} catch (Exception e) {
				 throw new Exception("Message: " + e.getMessage() + ". " , e);
			} finally {
				try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
			
			}
		return success;
	}
	
public boolean updateIncident(IncidentInformation pNewCard) throws Exception {
	
		String sqlUpdateWithLayer = "update ISObeyaDB.Incidents SET Project='%Project: %',Priority='%Priority: %',Description='%Description: %',PriorityClass='%PriorityClass: %' where incidentId='%incidentId: %';" ;
		String sqlUpdate;
		boolean success= true;	
		Statement stmtCard =GetStatement();
		
			sqlUpdate=sqlUpdateWithLayer;
		
		
		int rs ;
		try {
			sqlUpdate= sqlUpdate.replaceAll("%incidentId: %",pNewCard.getId());
			sqlUpdate= sqlUpdate.replaceAll("%Project: %",pNewCard.getProjectName());
			
			sqlUpdate= sqlUpdate.replaceAll("%Description: %",pNewCard.getDescription());
		
			
			sqlUpdate= sqlUpdate.replaceAll("%PriorityClass: %",pNewCard.getPriorityClass());
			System.out.println("********* " + sqlUpdate);
			
			rs = stmtCard.executeUpdate(sqlUpdate);
			
			
		} catch (SQLException e) {
			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
		        throw new Exception("Error : Duplicate user entry !", e);
			}  
			else
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);
		} finally {
			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
			
		}
		return success;
	}

	public ArrayList<String> GetIncidents(String pProject)throws Exception {
		
		String SqlSelect ="SELECT * FROM ISObeyaDB.Incidents where Project='%ProjectName%';";
	
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		
		ResultSet rs = null;
					
		Statement stmtCard =GetStatement();
		ArrayList<String> tabResult = new ArrayList<String>();
		
		try {
			rs = stmtCard.executeQuery(SqlSelect);
			System.out.println("********* " + SqlSelect);
			while (rs.next()) {
								
				String CardId = rs.getString("incidentId");
				
				String Priority = rs.getString("Priority");
				String Description = rs.getString("Description");
				
			 	 
				String PriorityClass = rs.getString("PriorityClass");
				
				
				

				String NewLine = JspReferenceCard;
				NewLine=NewLine.replaceAll("cardTemplate", CardId);
				NewLine=NewLine.replaceAll("%Priority%", PriorityClass);
				NewLine=NewLine.replaceAll("ValPriority", Priority);
				 
				NewLine=NewLine.replaceAll("ValAction", Description);
				
				
				
				UID nUID= new UID();
				NewLine=NewLine.replaceAll("Template", nUID.toString());
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
		        throw new Exception("Error : Duplicate user entry !", e);
			}  
			else
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);

		
		} finally {
		try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
			
		}
		return tabResult;
	}
	

	
//	public ArrayList<String> GetIncidentByUser(String pProject, String pOwner)throws Exception {
//		
//		String SqlSelect ="SELECT * FROM ISObeyaDB.cards where Owner='%Owner%' and Project='%ProjectName%' and Layer!='RolloutDone' and Layer!='backlogcolumn' and Layer!='DescriptionDone';";
//		SqlSelect=SqlSelect.replaceAll("%Owner%", pOwner);
//		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
//		
//		
//		ResultSet rs = null;
//		Statement stmtCard =GetStatement();
//		ArrayList<String> tabResult = new ArrayList<String>();
//		
//		try {
//			rs = stmtCard.executeQuery(SqlSelect);
//			System.out.println("********* " + SqlSelect);
//			while (rs.next()) {
//								
//				String CardId = rs.getString("CardId");
//				//String Project = rs.getString("Project");
//				String Owner =pOwner;
//				String Priority = rs.getString("Priority");
//				//String Blocker = rs.getString("Blocker");
//				String Description = rs.getString("Description");
//				String DueDate = rs.getString("DueDate");
//				String Charge = rs.getString("Charge");
//				String Raf = rs.getString("Raf");
//				String OwnerClass = rs.getString("OwnerClass");
//				//String Layer = rs.getString("Layer");
//				String PriorityClass = rs.getString("PriorityClass");
//				String BlockedStyle = rs.getString("BlockedStyle");
//				
//				
//
//				String NewLine = JspReferenceCard;
//				NewLine=NewLine.replaceAll("cardTemplate", CardId);
//				NewLine=NewLine.replaceAll("%Priority%", PriorityClass);
//				NewLine=NewLine.replaceAll("ValPriority", Priority);
//				NewLine=NewLine.replaceAll("ValUser", Owner);
//				NewLine=NewLine.replaceAll("%BlockedStyle%", "display:"+BlockedStyle+";");
//				NewLine=NewLine.replaceAll("%ClassContent%", OwnerClass);
//				NewLine=NewLine.replaceAll("ValAction", Description);
//				NewLine=NewLine.replaceAll("ValDate", DueDate);
//				NewLine=NewLine.replaceAll("ValCharge", Charge);
//				NewLine=NewLine.replaceAll("ValRaf", Raf);
//				NewLine=NewLine.replaceAll("%ClassTagDueDate%", GetClasseForDueDate(DueDate));
//				 
//			
//				UID nUID= new UID();
//				NewLine=NewLine.replaceAll("Template", nUID.toString());
//				tabResult.add(NewLine);
//			}
//		} catch (SQLException e) {
//			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
//		        throw new Exception("Error : Duplicate user entry !", e);
//			}  
//			else
//				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
//		} catch (Exception e) {
//			 throw new Exception("Message: " + e.getMessage() + ". "  , e);
//
//		
//		} finally {
//			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			
//		}
//		return tabResult;
//		
//		
//	}
	
//public int GetIncidentCountByUser(String pProject, String pOwner)throws Exception {
//		
//		String SqlSelect ="SELECT count(*) as count FROM ISObeyaDB.cards where Owner='%Owner%' and Project='%ProjectName%';";
//		SqlSelect=SqlSelect.replaceAll("%Owner%", pOwner);
//		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
//		
//		Statement stmtCard =GetStatement();
//		ResultSet rs = null;
//		int Nb=0;
//				 
//		
//		try {
//			
//			rs = stmtCard.executeQuery(SqlSelect);rs.next();
//			Nb=rs.getInt("count");								
//			System.out.println("********* " + SqlSelect);	 
//		} catch (SQLException e) {
//			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
//		        throw new Exception("Error : Duplicate user entry !", e);
//			}  
//			else
//				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
//		} catch (Exception e) {
//			 throw new Exception("Message: " + e.getMessage() + ". "  , e);
//
//		
//		} finally {
//			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			
//		}
//		return Nb;
//		
//		
//	}

	public void DeleteIncident(String pCardId) throws Exception {
		String SqlSelect ="DELETE FROM ISObeyaDB.Incidents where CardId='%pCardId%';";
		SqlSelect=SqlSelect.replaceAll("%pCardId%", pCardId);
		 
		Statement stmtCard =GetStatement();
		try {
			   
			  int rs= stmtCard.executeUpdate(SqlSelect);
			   System.out.println("********* " + SqlSelect);
			 
		} catch (SQLException e) {
			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
		        throw new Exception("Error : Duplicate user entry !", e);
			}  
			else
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage()  , e);
		 
		} finally {
				
			try { if (stmtCard != null) stmtCard.close(); } catch (SQLException e) { e.printStackTrace(); }
			
		}
		
	}  

	
	


	  
		 
   
	
	

}
