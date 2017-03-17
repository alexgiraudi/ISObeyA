package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class MySqlGenericStatment {
	
	protected Connection conn = null;
	protected Statement stmtCard = null;
	protected Statement stmtCardLog = null;
	protected Statement stmtPeople = null;
	protected Statement stmtPeopleCard = null;
	protected Statement stmtProject = null;
	protected Statement stmtRelease = null;
	/* 
	 * CREATE USER 'isobeyauser'@'%' IDENTIFIED BY 'isobeya';
	GRANT ALL PRIVILEGES ON ISObeyaDB.* TO 'isobeyauser'@'%' WITH GRANT OPTION;
	 * 
	 * ***/
	public  MySqlGenericStatment()throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();

			String connectionUrl = "jdbc:mysql://localhost:3306/ISObeyaDB?useUnicode=true&characterEncoding=UTF-8";
			String connectionUser = "root";
			String connectionPassword = "heavydrinker";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			stmtCard = conn.createStatement();
			stmtCardLog = conn.createStatement();
			stmtPeople = conn.createStatement();
			stmtPeopleCard = conn.createStatement();
			stmtProject = conn.createStatement();
			stmtRelease = conn.createStatement();
					
		} catch (Exception e) {
			throw new Exception("Message: " + e.getMessage() + ". "  , e);
		
		}
	}

}




