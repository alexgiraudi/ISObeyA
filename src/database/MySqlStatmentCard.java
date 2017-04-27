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

import beanjson.cardInformation;



public class MySqlStatmentCard extends MySqlGenericStatment{
	public static final int MYSQL_DUPLICATE_PK = 1062;
	private String JspReferenceCard ="<div draggable='true' Style='' class='cardEdit' id='cardTemplate' tabindex='0' draggable='true' ondragstart='drag(event)'><div class='card__header'><div class='estimator'><button class='%Priority%' type='button' title='Priority'>ValPriority</button></div><img src='./Librairies/iobeya/none.png.jpg' class='avatar' /><div class='assigner'><button class='assigner__assignee' data-toggle='dropdown' title='Owner'  id='OwnerTemplate'>ValUser</button></div><span class='blocking-indicator__indicator blocker' style='%BlockedStyle%' id='blokerTemplate' title='BlockerValue'>Blocked</span><div class='card__actions'> <button title='Blocker'><i class='glyphicon glyphicon-thumbs-down'></i></button><button id='logTemplate' href='' data-toggle='modal' title='Log'> <i class='glyphicon glyphicon-pushpin'></i> </button> <button title='Edit'> <i class='glyphicon glyphicon-edit'></i> </button> <button id='deleteTemplate' title='Delete'><i class='glyphicon glyphicon-off'></i></button></div></div><div class='%ClassContent%' id='CardBodyTemplateAddCard'><div class='card__body-content'><div class='card__body-title' title='ContentCard' id='CardBodyValueTemplate'>ValAction</div> <div class='card__body-meta'><div class='%ClassTagDueDate%' id='DueDateDivTemplate'><span class='DueDateFieldValue' title='DueDateValue'>ValDate</span></div><div class='card__body-counts'><span style='color:grey;' id='ChargeTemplate' title='Charge (d)'>ValCharge</span><span style='color:grey;' id='ProgressTemplate' title='Raf'>ValRaf</span></div></div></div></div></div>";
	
	public MySqlStatmentCard() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentCard Class intance On");
	}
	
	public boolean SaveCard(cardInformation pNewCard) throws Exception {
		
		String sqlUpdate = "INSERT INTO ISObeyaDB.cards(`CardId`,`Project`,`Owner`,`Priority`,`Blocker`,`Description`,`DueDate`,`Charge`,`Raf`,`OwnerClass`,`Layer`,`BlockedStyle`,`PriorityClass`)"
				+ "VALUES ('%CardId: %','%Project: %','%Owner: %','%Priority: %','%Blocker: %','%Description: %','%DueDate: %',%Charge: %,%Raf: %,'%OwnerClass: %','%Layer: %','%BlockedStyle: %','%PriorityClass: %');";
				
		boolean success= true;		
		Statement stmtCard =GetStatement(); 
		try {
			if (pNewCard==null){
				success= false;
			}else {
				sqlUpdate= sqlUpdate.replaceAll("%CardId: %",pNewCard.getId());
				sqlUpdate= sqlUpdate.replaceAll("%Project: %",pNewCard.getProjectName());
				sqlUpdate= sqlUpdate.replaceAll("%Owner: %",pNewCard.getOwner());
				sqlUpdate= sqlUpdate.replaceAll("%Priority: %",pNewCard.getPriority());
				sqlUpdate= sqlUpdate.replaceAll("%Blocker: %",pNewCard.getBlocked());
				sqlUpdate= sqlUpdate.replaceAll("%Description: %",pNewCard.getDescription());
				sqlUpdate= sqlUpdate.replaceAll("%DueDate: %",pNewCard.getDueDate());
				sqlUpdate= sqlUpdate.replaceAll("%Charge: %",String.valueOf(pNewCard.getDuration()));
				sqlUpdate= sqlUpdate.replaceAll("%Raf: %",String.valueOf(pNewCard.getRAF()));
				sqlUpdate= sqlUpdate.replaceAll("%OwnerClass: %",pNewCard.getOwnerClass());
				sqlUpdate= sqlUpdate.replaceAll("%Layer: %",pNewCard.getLawer());
				sqlUpdate= sqlUpdate.replaceAll("%BlockedStyle: %",pNewCard.getBlockedStyle());
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
	
public boolean updateCard(cardInformation pNewCard) throws Exception {
	
		String sqlUpdateWithLayer = "update ISObeyaDB.cards SET Project='%Project: %',Owner='%Owner: %',Priority='%Priority: %',Blocker='%Blocker: %',Description='%Description: %',DueDate='%DueDate: %',Charge=%Charge: %,Raf=%Raf: %,OwnerClass='%OwnerClass: %',Layer='%Layer: %' ,BlockedStyle='%BlockedStyle: %',PriorityClass='%PriorityClass: %' where CardId='%CardId: %';" ;
		String sqlUpdateWithoutLayer = "update ISObeyaDB.cards SET Project='%Project: %',Owner='%Owner: %',Priority='%Priority: %',Blocker='%Blocker: %',Description='%Description: %',DueDate='%DueDate: %',Charge=%Charge: %,Raf=%Raf: %,OwnerClass='%OwnerClass: %',BlockedStyle='%BlockedStyle: %',PriorityClass='%PriorityClass: %' where CardId='%CardId: %';" ;
		String sqlUpdate;
		boolean success= true;	
		Statement stmtCard =GetStatement();
		if (pNewCard.getLawer().equalsIgnoreCase( "N/A")){
			sqlUpdate=sqlUpdateWithoutLayer;
		}else{
			
			sqlUpdate=sqlUpdateWithLayer;
		}
		
		int rs ;
		try {
			sqlUpdate= sqlUpdate.replaceAll("%CardId: %",pNewCard.getId());
			sqlUpdate= sqlUpdate.replaceAll("%Project: %",pNewCard.getProjectName());
			sqlUpdate= sqlUpdate.replaceAll("%Owner: %",pNewCard.getOwner());
			sqlUpdate= sqlUpdate.replaceAll("%Priority: %",pNewCard.getPriority());
			sqlUpdate= sqlUpdate.replaceAll("%Blocker: %",pNewCard.getBlocked());
			sqlUpdate= sqlUpdate.replaceAll("%Description: %",pNewCard.getDescription());
			sqlUpdate= sqlUpdate.replaceAll("%DueDate: %",pNewCard.getDueDate());
			sqlUpdate= sqlUpdate.replaceAll("%Charge: %",String.valueOf(pNewCard.getDuration()));
			sqlUpdate= sqlUpdate.replaceAll("%Raf: %",String.valueOf(pNewCard.getRAF()));
			sqlUpdate= sqlUpdate.replaceAll("%OwnerClass: %",pNewCard.getOwnerClass());
			sqlUpdate= sqlUpdate.replaceAll("%Layer: %",pNewCard.getLawer());
			sqlUpdate= sqlUpdate.replaceAll("%BlockedStyle: %",pNewCard.getBlockedStyle());
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

	public ArrayList<String> GetCard(String pLayer,String pProject)throws Exception {
		
		String SqlSelect ="SELECT * FROM ISObeyaDB.cards where Layer='%ColumnLayer%' and Project='%ProjectName%';";
		SqlSelect=SqlSelect.replaceAll("%ColumnLayer%", pLayer);
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		
		ResultSet rs = null;
					
		Statement stmtCard =GetStatement();
		ArrayList<String> tabResult = new ArrayList<String>();
		
		try {
			rs = stmtCard.executeQuery(SqlSelect);
			System.out.println("********* " + SqlSelect);
			while (rs.next()) {
								
				String CardId = rs.getString("CardId");
				//String Project = rs.getString("Project");
				String Owner = rs.getString("Owner");
				String Priority = rs.getString("Priority");
				//String Blocker = rs.getString("Blocker");
				String Description = rs.getString("Description");
				String DueDate = rs.getString("DueDate");
				String Charge = rs.getString("Charge");
				String Raf = rs.getString("Raf");
				String OwnerClass = rs.getString("OwnerClass");
				String Layer = rs.getString("Layer");
				String PriorityClass = rs.getString("PriorityClass");
				String BlockedStyle = rs.getString("BlockedStyle");
				
				

				String NewLine = JspReferenceCard;
				NewLine=NewLine.replaceAll("cardTemplate", CardId);
				NewLine=NewLine.replaceAll("%Priority%", PriorityClass);
				NewLine=NewLine.replaceAll("ValPriority", Priority);
				NewLine=NewLine.replaceAll("ValUser", Owner);
				NewLine=NewLine.replaceAll("%BlockedStyle%", "display:"+BlockedStyle+";");
				NewLine=NewLine.replaceAll("%ClassContent%", OwnerClass);
				NewLine=NewLine.replaceAll("ValAction", Description);
				NewLine=NewLine.replaceAll("ValDate", DueDate);
				NewLine=NewLine.replaceAll("ValCharge", Charge);
				NewLine=NewLine.replaceAll("ValRaf", Raf);
				
				if (!(Layer.equalsIgnoreCase("RolloutDone") || Layer.equalsIgnoreCase("DescriptionDone"))){
					NewLine=NewLine.replaceAll("%ClassTagDueDate%", GetClasseForDueDate(DueDate));
				}
				 
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
	
private ArrayList<String> GetCardBetweenDate(int pWeek,String pProject)throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.WEEK_OF_YEAR, pWeek);        
		cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		String StartDate = sdf.format(cal.getTime());
		cal.set(Calendar.DAY_OF_WEEK, Calendar.FRIDAY);
		String EndDate = sdf.format(cal.getTime());
		
		String SqlSelect ="SELECT * FROM ISObeyaDB.cards where STR_TO_DATE(DueDate, '%M %d,%Y') >='"
				+ StartDate
				+ "' and STR_TO_DATE(DueDate, '%M %d,%Y') <='"
				+ EndDate
				+ "' and Project='%ProjectName%'"
				+ " and Layer!='backlogcolumn';";
		
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		
		
		ResultSet rs = null;
					
		Statement stmtCard =GetStatement();
		ArrayList<String> tabResult = new ArrayList<String>();
		
		try {
			rs = stmtCard.executeQuery(SqlSelect);
			System.out.println("Week : "+ pWeek+ "****** " + SqlSelect);
			
			while (rs.next()) {
								
				String CardId = rs.getString("CardId");
				//String Project = rs.getString("Project");
				String Owner = rs.getString("Owner");
				String Priority = rs.getString("Priority");
				//String Blocker = rs.getString("Blocker");
				String Description = rs.getString("Description");
				String DueDate = rs.getString("DueDate");
				String Charge = rs.getString("Charge");
				String Raf = rs.getString("Raf");
				String OwnerClass = rs.getString("OwnerClass");
				String Layer = rs.getString("Layer");
				String PriorityClass = rs.getString("PriorityClass");
				String BlockedStyle = rs.getString("BlockedStyle");
				
				

				String NewLine = JspReferenceCard;
				if (Layer.equalsIgnoreCase("RolloutDone") || Layer.equalsIgnoreCase("DescriptionDone")){
					NewLine=NewLine.replaceAll("Style=''", "Style='opacity: 0.54;'");
				}
				else
					NewLine=NewLine.replaceAll("%ClassTagDueDate%", GetClasseForDueDate(DueDate));
				
				NewLine=NewLine.replaceAll("cardTemplate", CardId);
				NewLine=NewLine.replaceAll("%Priority%", PriorityClass);
				NewLine=NewLine.replaceAll("ValPriority", Priority);
				NewLine=NewLine.replaceAll("ValUser", Owner);
				NewLine=NewLine.replaceAll("%BlockedStyle%", "display:"+BlockedStyle+";");
				NewLine=NewLine.replaceAll("%ClassContent%", OwnerClass);
				NewLine=NewLine.replaceAll("ValAction", Description);
				NewLine=NewLine.replaceAll("ValDate", DueDate);
				NewLine=NewLine.replaceAll("ValCharge", Charge);
				NewLine=NewLine.replaceAll("ValRaf", Raf);
				
				
				UID nUID= new UID();
				NewLine=NewLine.replaceAll("Template", nUID.toString());
				tabResult.add(NewLine);
				System.out.println("-------------- " + NewLine);
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

	public ArrayList<String> getWeekAndCard(String pProject) throws Exception {
		
		String jspString ="";
		
		ArrayList<String> layerAndCards = new ArrayList<String> ();
		for (int week=1;week<=52;week++){
			jspString+="<div class='column top-to-bottom' id='Wip" + week+ "'>";
			jspString+="<div class='column__header'>";
			jspString+="<h2 class='column__header-label'>WIP - #" + week + "</h2>";
			jspString+="</div>";
			jspString+="<div id='Week" + week + "' class='column__items-wrapper' ondrop='drop(event)' ondragover='allowDrop(event)'>";
			
			/*  Get Card */
			ArrayList<String> cards = GetCardBetweenDate(week,pProject);
			for (int i=0; i<cards.size();i++){
				jspString+= cards.get(i);
			}		
			jspString+="</div>";
			jspString+="</div>";
			
			layerAndCards.add(jspString);
			jspString ="";
		}
		
		 
	 return layerAndCards;
			
		
	}
	
	public ArrayList<String> GetCardByUser(String pProject, String pOwner)throws Exception {
		
		String SqlSelect ="SELECT * FROM ISObeyaDB.cards where Owner='%Owner%' and Project='%ProjectName%' and Layer!='RolloutDone' and Layer!='backlogcolumn' and Layer!='DescriptionDone';";
		SqlSelect=SqlSelect.replaceAll("%Owner%", pOwner);
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		
		ResultSet rs = null;
		Statement stmtCard =GetStatement();
		ArrayList<String> tabResult = new ArrayList<String>();
		
		try {
			rs = stmtCard.executeQuery(SqlSelect);
			System.out.println("********* " + SqlSelect);
			while (rs.next()) {
								
				String CardId = rs.getString("CardId");
				//String Project = rs.getString("Project");
				String Owner =pOwner;
				String Priority = rs.getString("Priority");
				//String Blocker = rs.getString("Blocker");
				String Description = rs.getString("Description");
				String DueDate = rs.getString("DueDate");
				String Charge = rs.getString("Charge");
				String Raf = rs.getString("Raf");
				String OwnerClass = rs.getString("OwnerClass");
				//String Layer = rs.getString("Layer");
				String PriorityClass = rs.getString("PriorityClass");
				String BlockedStyle = rs.getString("BlockedStyle");
				
				

				String NewLine = JspReferenceCard;
				NewLine=NewLine.replaceAll("cardTemplate", CardId);
				NewLine=NewLine.replaceAll("%Priority%", PriorityClass);
				NewLine=NewLine.replaceAll("ValPriority", Priority);
				NewLine=NewLine.replaceAll("ValUser", Owner);
				NewLine=NewLine.replaceAll("%BlockedStyle%", "display:"+BlockedStyle+";");
				NewLine=NewLine.replaceAll("%ClassContent%", OwnerClass);
				NewLine=NewLine.replaceAll("ValAction", Description);
				NewLine=NewLine.replaceAll("ValDate", DueDate);
				NewLine=NewLine.replaceAll("ValCharge", Charge);
				NewLine=NewLine.replaceAll("ValRaf", Raf);
				NewLine=NewLine.replaceAll("%ClassTagDueDate%", GetClasseForDueDate(DueDate));
				 
			
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
	
public int GetCardCountByUser(String pProject, String pOwner)throws Exception {
		
		String SqlSelect ="SELECT count(*) as count FROM ISObeyaDB.cards where Owner='%Owner%' and Project='%ProjectName%';";
		SqlSelect=SqlSelect.replaceAll("%Owner%", pOwner);
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		Statement stmtCard =GetStatement();
		ResultSet rs = null;
		int Nb=0;
				 
		
		try {
			
			rs = stmtCard.executeQuery(SqlSelect);rs.next();
			Nb=rs.getInt("count");								
			System.out.println("********* " + SqlSelect);	 
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
		return Nb;
		
		
	}

	public void DeleteCard(String pCardId) throws Exception {
		String SqlSelect ="DELETE FROM ISObeyaDB.cards where CardId='%pCardId%';";
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

	
	private String GetClasseForDueDate(String pDueDate){
		
	
		    if(pDueDate.isEmpty() || pDueDate.trim().equals("")){
		        return "TagDueDateKO";
		    }else{
		            SimpleDateFormat sdf =  new SimpleDateFormat("MMM dd, yyyy",Locale.ENGLISH); // Jan-20-2015 1:30:55 PM
		            SimpleDateFormat sdfToday =  new SimpleDateFormat("MMM-dd-yyyy hh:mm:ss a"); // Jan-20-2015 1:30:55 PM
		               Date d=null;
		               Date d1=null;
		            String today=   getToday("MMM-dd-yyyy hh:mm:ss a");
		            try {
//		                System.out.println("expdate>> "+pDueDate);
//		                System.out.println("today>> "+today+"\n\n");
		                d = sdf.parse(pDueDate);
		                d1 = sdfToday.parse(today);
		                if(d1.compareTo(d) <0){// not expired
		                    return "TagDueDateOK";
		                }else if(d.compareTo(d1)==0){// both date are same
		                            if(d.getTime() < d1.getTime()){// not expired
		                                return "TagDueDateOK";
		                            }else if(d.getTime() == d1.getTime()){//expired
		                                return "TagDueDateKO";
		                            }else{//expired
		                                return "TagDueDateKO";
		                            }
		                }else{//expired
		                    return "TagDueDateKO";
		                }
		            } catch (ParseException e) {
		                e.printStackTrace();                    
		                return "TagDueDateKO";
		            }
		    }
		}


	  private static String getToday(String format){
	     Date date = new Date();
	     return new SimpleDateFormat(format).format(date);
	  }
		
		 
   
	
	

}
