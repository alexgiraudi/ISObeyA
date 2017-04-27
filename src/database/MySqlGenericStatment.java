package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class MySqlGenericStatment {
	
	protected Connection conn = null;
	private String connectionUrl = "jdbc:mysql://localhost:3306/ISObeyaDB?useUnicode=true&characterEncoding=UTF-8";
	private String connectionUser = "root";
	private String connectionPassword = "admin";
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
			System.out.println("=====================================> Connexion creation !");
			
					
		} catch (Exception e) {
			throw new Exception("Message: " + e.getMessage() + ". "  , e);
		
		}
	}
	
	protected Statement GetStatement() throws Exception {
		Statement newStatement=null; 
		try {
			if (conn!=null){
				newStatement= conn.createStatement();
				System.out.println("=====================================> Statement creation !");
			}
			else{
				conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
				System.out.println("=====================================> Connexion re-creation !");
				System.out.println("=====================================> Statement re-creation !");
				newStatement= conn.createStatement();
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return newStatement;
	}

}




