package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MySqlStatmentRelease extends MySqlGenericStatment{

	public MySqlStatmentRelease() throws Exception {
		super();
	}
	
	public ArrayList<String> ReadReleaseInfo()throws Exception {
		ResultSet rs = null;
		ArrayList<String> tabResult = new ArrayList<String>();
		String TemplateJSP = "<li data-role='list-divider'>#Releasee<span style='color:green' class='ui-li-count'>#Date</span></li><li><a href=''><h3 style='color:blue'>#Description</h3></a></li>";
		
		try {
			rs = stmtRelease.executeQuery("select * from Releases;");
			while (rs.next()) {
				String Date = rs.getString("Date");
				String Release = rs.getString("Release");
				String Description = rs.getString("Description");
				
				
				System.out.println("Date: " + Date + ", release: " + Release + ", Description: " + Description);
				String NewLine = TemplateJSP;
				NewLine=NewLine.replaceAll("#Date", Date);
				NewLine=NewLine.replaceAll("#Release", Release);
				NewLine=NewLine.replaceAll("#Description", Description);
				
			
				tabResult.add(NewLine);
			}
		} catch (SQLException e) {
			 
	        throw new Exception("Message: " + e.getMessage() + ". " +  e.getErrorCode(), e);
		
		} catch (Exception e) {
			 throw new Exception("Message: " + e.getMessage() + ". "  , e); 
		}finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (stmtRelease != null) stmtRelease.close(); } catch (SQLException e) { e.printStackTrace(); }
//			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
	return tabResult;
		
	}

	 
}
