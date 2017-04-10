package database;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;






import beanjson.peopleProjectInformation;



public class MySqlStatmentPeopleCard extends MySqlGenericStatment{
	public static final int MYSQL_DUPLICATE_PK = 1062;
	public MySqlStatmentPeopleCard() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentPeopleCard Class intance On");
	}
	 
	public boolean updatePeopleCard(peopleProjectInformation pNewCard, String sqlMode) throws Exception {
		
		
		
		String sqlUpdateA = "INSERT INTO ISObeyaDB.PeopleProject(`Project`,`Owner`,`OldHumor`,`NewHumor`,`Photo`,`IdUser`,`OwnerClasse`)"
				+ "VALUES ('%Project: %','%Owner: %','%OldHumor: %','%NewHumor: %','%Photo: %','%IdUser: %','%OwnerClasse: %');";
		
		String sqlUpdateB = "UPDATE ISObeyaDB.PeopleProject SET OwnerClasse='%OwnerClasse: %',Owner='%Owner: %',OldHumor='%OldHumor: %',NewHumor='%NewHumor: %',Photo='%Photo: %' where Project='%Project: %' and IdUser='%IdUser: %';";
		String sqlUpdateC = "DELETE FROM ISObeyaDB.PeopleProject where Owner='%Owner: %' and Project='%Project: %' ;";
		
		Statement stmtPeopleCard =GetStatement();
		String sqlUpdate="";
		
		if (sqlMode.equalsIgnoreCase("Insert"))
			sqlUpdate = sqlUpdateA;
		else if (sqlMode.equalsIgnoreCase("Update"))
			sqlUpdate = sqlUpdateB;
		else if (sqlMode.equalsIgnoreCase("Delete")){
			
			MySqlStatmentCard NbCardForUser = new MySqlStatmentCard();
			int value = NbCardForUser.GetCardCountByUser(pNewCard.getProjectName(), pNewCard.getOwner());
			if (value>0)
				sqlUpdate = "";
			else
				sqlUpdate = sqlUpdateC;
		}
		boolean success= true;		
		int rs ;
		try {
			
			
			if (pNewCard==null){
				success= false;
			}else {
				
				sqlUpdate= sqlUpdate.replaceAll("%Project: %",pNewCard.getProjectName());
				sqlUpdate= sqlUpdate.replaceAll("%Owner: %",pNewCard.getOwner());
				sqlUpdate= sqlUpdate.replaceAll("%OldHumor: %",pNewCard.getOldHumor());
				sqlUpdate= sqlUpdate.replaceAll("%NewHumor: %",pNewCard.getNewHumor());
				sqlUpdate= sqlUpdate.replaceAll("%Photo: %",pNewCard.getPhoto());
				sqlUpdate= sqlUpdate.replaceAll("%IdUser: %",pNewCard.getIdUser());
				sqlUpdate= sqlUpdate.replaceAll("%OwnerClasse: %",pNewCard.getOwnerClasse());
				System.out.println("********* " + sqlUpdate);
			}
			
			rs = stmtPeopleCard.executeUpdate(sqlUpdate);
			
//			System.out.println(rs);
		} catch (SQLException e) {
			if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
		        throw new Exception("Error : Duplicate user entry !", e);
			}  
			else
				throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e);
		} finally {
			
//			try { if (stmtPeopleCard != null) stmtPeopleCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return success;
	}
	
	public ArrayList<String> GetPeopleCard(String pProject) throws Exception {
		
		String SqlSelect ="SELECT * FROM ISObeyaDB.PeopleProject where  Project='%ProjectName%';";
		SqlSelect=SqlSelect.replaceAll("%ProjectName%", pProject);
		
		String JspReferenceCardUser ="<div class='line top-to-bottom' id='IDUser'><div id='Line-IDUser' class='line__items-wrapper ' ondrop='drop(event)' ondragover='allowDrop(event)'><div draggable='true' class='cardUser' id='card-IDUser' draggable='false'  tabindex='0'><div class='card__header'><img src='./Librairies/iobeya/none.png.jpg' class='avatar' /><div class='assigner'><button class='assigner__assignee'>NewUser</button></div><img style='float:right;margin-right:5px; 'src='./Librairies/iobeya/unknown.png' width='25px' height='25px'/><button id='delete-IDUser' style='margin-left:10px;' title='Delete'><i class='glyphicon glyphicon-off BtcGrey'></i></button></div><div class='UserClasse' title='CardBodyTheme' ><center><img src='OldHumor' width='40px' height='40px'/><img src='./Librairies/images/kanban/arrow.png' width='40px' height='40px'><img class='Humor' src='NewHumor' width='40px' height='40px'/></center></div><div class='userIndicator'><span class='badge badgebacklog' title='Backlog Items' id='BacklogItem-IDUser'>CardOpenNB</span><span class='badge badgeinprogress' title='Items in Progress' id='InProgressItem-IDUser'>CardInProgressNB</span><span class='badge badgedone' title='Close Items' id='CloseItem-IDUser'>CardCloseNB</span></div></div>%Cards%</div></div>";;
		 
		Statement stmtPeopleCard =GetStatement();	
		ArrayList<String> tabResult = new ArrayList<String>();
		
		ResultSet rs = null;
		try {
			rs = stmtPeopleCard.executeQuery(SqlSelect);
			while (rs.next()) {
								
				String IdUser = rs.getString("IdUser");
				String Owner = rs.getString("Owner");
				String OldHumor = rs.getString("OldHumor");
				String NewHumor = rs.getString("NewHumor");
				String Photo = rs.getString("Photo");
				String OwnerClasse = rs.getString("OwnerClasse");
				
				

				String NewLine = JspReferenceCardUser;
				
				
				
				
				NewLine=NewLine.replaceAll("IDUser", IdUser);
				NewLine=NewLine.replaceAll("NewUser", Owner);
				NewLine=NewLine.replaceAll("UserClasse", OwnerClasse);
				NewLine=NewLine.replaceAll("Photo", Photo);
				NewLine=NewLine.replaceAll("OldHumor", OldHumor);
				NewLine=NewLine.replaceAll("NewHumor", NewHumor);
				
				
				//Get Cards List
				int CardCloseNB = 0;
				int CardOpenNB=0;
				int CardInProgressNB=0;
				
				String SqlCountSelect_CardCloseNB ="SELECT count(*) AS count FROM ISObeyaDB.Cards where Project='%ProjectName%' and Owner='%Owner%' and Layer='RolloutDone';";
				String SqlCountSelect_CardOpenNB ="SELECT count(*) AS count FROM ISObeyaDB.Cards where Project='%ProjectName%' and Owner='%Owner%' and Layer='backlogcolumn';";
				String SqlCountSelect_ ="SELECT count(*)  AS count FROM ISObeyaDB.Cards where Project='%ProjectName%' and Owner='%Owner%' ;";
				SqlCountSelect_CardCloseNB=SqlCountSelect_CardCloseNB.replaceAll("%ProjectName%", pProject);
				SqlCountSelect_CardCloseNB=SqlCountSelect_CardCloseNB.replaceAll("%Owner%", Owner);
				SqlCountSelect_CardOpenNB=SqlCountSelect_CardOpenNB.replaceAll("%ProjectName%", pProject);
				SqlCountSelect_CardOpenNB=SqlCountSelect_CardOpenNB.replaceAll("%Owner%", Owner);
				SqlCountSelect_=SqlCountSelect_.replaceAll("%ProjectName%", pProject);
				SqlCountSelect_=SqlCountSelect_.replaceAll("%Owner%", Owner);
				ResultSet rs1=null;
				java.sql.Statement stmtIndicator = conn.createStatement();
				
				rs1 = stmtIndicator.executeQuery(SqlCountSelect_CardCloseNB);rs1.next();
				CardCloseNB=rs1.getInt("count");
				
				rs1 = stmtIndicator.executeQuery(SqlCountSelect_CardOpenNB);rs1.next();
				CardOpenNB=rs1.getInt("count");
				
				rs1 = stmtIndicator.executeQuery(SqlCountSelect_);rs1.next();
				CardInProgressNB=rs1.getInt("count")-CardOpenNB-CardCloseNB;
				
				stmtIndicator.close();
				NewLine=NewLine.replaceAll("CardCloseNB", Integer.toString(CardCloseNB));
				NewLine=NewLine.replaceAll("CardOpenNB", Integer.toString(CardOpenNB));
				NewLine=NewLine.replaceAll("CardInProgressNB", Integer.toString(CardInProgressNB));
				
				
				MySqlStatmentCard ListOfCards = new MySqlStatmentCard();
				String CardInfo="";
				ArrayList<String> lCards = ListOfCards.GetCardByUser(pProject,Owner);
				for (int i=0;i<lCards.size();i++){
					CardInfo+=lCards.get(i).toString();
				}
				NewLine=NewLine.replaceAll("%Cards%", CardInfo);
				
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			 
		        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
			
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtPeopleCard != null) stmtPeopleCard.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return tabResult;
		
		
	}

}
