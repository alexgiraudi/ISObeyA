package database;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class MySqlStatmentPeople extends MySqlGenericStatment{
	
	public MySqlStatmentPeople() throws Exception{
		super();
		System.out.println("--------> MySqlStatmentPeople Class intance On");
	}
	
	public ArrayList<String> GetPeople() throws Exception {
		
		
		ResultSet rs = null;
		String TemplateJSP = "<a class='dropdown-item #UserClasse' href='#'>@User</a>";
		String TemplateSocieteJSP = "<div role='separator' class='dropdown-divider'>";
		Statement stmtPeople =GetStatement();
			
		
		ArrayList<String> tabResult = new ArrayList<String>();
		String Societe = "";
		try {
			rs = stmtPeople.executeQuery("SELECT Pseudo, Societe,Classe FROM ISObeyaDB.people order by Id;");
			while (rs.next()) {
				if (!Societe.equals(rs.getString("Societe"))){
					System.out.print(Societe);
					Societe=rs.getString("Societe");
					//System.out.println("->" + Societe);
					String NewLineHeader = TemplateSocieteJSP;
					NewLineHeader+=Societe;
					NewLineHeader += "</div>";
					tabResult.add(NewLineHeader);
				}
				
				String User = rs.getString("Pseudo");
				String UserClasse = rs.getString("Classe");
				

				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("@User", User);
				NewLine=NewLine.replaceAll("#UserClasse", UserClasse);
				
			
				tabResult.add(NewLine);
			}
			} catch (SQLException e) {
					throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
			} catch (Exception e) {
				 throw new Exception("Message: " + e.getMessage() + ". "  , e);
			} finally {
				
//				try { if (stmtPeople != null) stmtPeople.close(); } catch (SQLException e) { e.printStackTrace(); }
//				try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
		return tabResult;
	}

}
