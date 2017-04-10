package database;


 

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

 



public class MySqlStatmentCardLog extends MySqlGenericStatment{
	public static final int MYSQL_DUPLICATE_PK = 1062;
	public MySqlStatmentCardLog() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentCardLog Class intance On");
	}
	
	public boolean SaveLog(String pNewCardID, String pEventID, String pDescriptionEvent, String pCardInfo) throws Exception {
		
		String sqlUpdate = "INSERT INTO ISObeyaDB.cardsLog(`DateEvent`,`CardId`,`EventID`,`DescriptionEvent`, `RawCard`) VALUES ('%DateEvent: %','%CardId: %','%EventId: %','%DescriptionEvent: %','%RawCard: %');";
	 		
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		Date todayDate = new Date();
		Statement stmtCardLog =GetStatement();
		boolean success= true;		
		int rs ;
		try {
				sqlUpdate= sqlUpdate.replaceAll("%DateEvent: %",dateFormat.format(todayDate));
				sqlUpdate= sqlUpdate.replaceAll("%CardId: %",pNewCardID);
				sqlUpdate= sqlUpdate.replaceAll("%EventId: %",pEventID);
				sqlUpdate= sqlUpdate.replaceAll("%DescriptionEvent: %",pDescriptionEvent);
				sqlUpdate= sqlUpdate.replaceAll("%RawCard: %",pCardInfo);
				   System.out.println("********* " + sqlUpdate);
		
				stmtCardLog.executeUpdate("SET SQL_SAFE_UPDATES = 0;");
			rs = stmtCardLog.executeUpdate(sqlUpdate);
			
//			System.out.println(rs);
		} catch (SQLException e) {
			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
		        throw new Exception("Error : Duplicate user entry !", e);
			}  
			else
				throw new Exception(e.getMessage(), e);
				//e.printStackTrace();
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);
		} finally {
			
//			try { if (stmtCardLog != null) stmtCardLog.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return success;
	}
	
	
public ArrayList<String> GetLog(String pNewCardID) throws Exception {
		
		String sqlUpdate = "SELECT * from ISObeyaDB.cardsLog where CardId='%CardId: %'  ORDER BY DateEvent DESC;";
		ArrayList<String> tabResult = new ArrayList<String>();	
		String JspReferenceCard ="<tr><td>%CardId%</td><td>%EventId%</td><td>%DateEvent%</td><td>%DescriptionEvent%</td></tr><tr><th style='font-size:x-small;color: #0000AA;' colspan='4'>%RawCard%</th></tr>";
												
		Statement stmtCardLog =GetStatement();
		ResultSet rs=null ;
		try {
				
				sqlUpdate= sqlUpdate.replaceAll("%CardId: %",pNewCardID);
				System.out.println("********* " + sqlUpdate);
				rs = stmtCardLog.executeQuery(sqlUpdate);
				
				while (rs.next()) {
									
					String CardId = rs.getString("CardId");
					//String Index = rs.getString("Id");
					String EventId = rs.getString("EventId");
					String DateEvent = rs.getString("DateEvent");
					String DescriptionEvent = rs.getString("DescriptionEvent");
					String RawCard = rs.getString("RawCard");
					
					String NewLine = JspReferenceCard;
					//NewLine=NewLine.replaceAll("%Index%", Index);
					NewLine=NewLine.replaceAll("%CardId%", CardId);
					NewLine=NewLine.replaceAll("%EventId%", EventId);
					NewLine=NewLine.replaceAll("%DateEvent%", DateEvent);
					NewLine=NewLine.replaceAll("%DescriptionEvent%", DescriptionEvent);
					NewLine=NewLine.replaceAll("%RawCard%", RawCard);
					
					 			
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
//				try { if (stmtCardLog != null) stmtCardLog.close(); } catch (SQLException e) { e.printStackTrace(); }
//				try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
			return tabResult;
	}
	
}
