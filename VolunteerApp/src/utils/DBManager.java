package utils;

import java.sql.Connection;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;

public class DBManager {
	//https://www.programcreek.com/java-api-examples/index.php?api=com.microsoft.sqlserver.jdbc.SQLServerDataSource
	public Connection getConnection() throws Exception {
		SQLServerDataSource ds = new SQLServerDataSource();  
		ds.setUser("admin");  
		ds.setPassword("MasterPassword");  
		ds.setServerName("proddb.c8gummyw1oeu.eu-west-1.rds.amazonaws.com");  
		ds.setPortNumber(1433);
		ds.setDatabaseName("app");
		Connection conn;
		try {
			conn = ds.getConnection();
		} catch (SQLServerException e) {
			throw new Exception(e);
		}
		return conn;
		 		
	}
}
