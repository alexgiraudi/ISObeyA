package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MysqlAdmin extends MySqlGenericStatment{

	public MysqlAdmin() throws Exception {
		super();
		System.out.println("--------> MySqlStatmentRelease Class intance On");
	}
	
	public ArrayList<String> execQuery(String Sqlline)throws Exception {
		ResultSet rs = null;
		ArrayList<String> tabResult = new ArrayList<String>();
		 	Statement stmtadmin =GetStatement();
		try {
			rs = stmtadmin.executeQuery(Sqlline);
			int columnCount = rs.getMetaData().getColumnCount();
			 			 
		    while(rs.next()){
		        String val="";
		        for(int i = 1;i<=columnCount;i++){
		        	val+=";" +rs.getString(i);
		        }
		        tabResult.add(val);
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
