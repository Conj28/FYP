package utils;

import java.sql.Connection;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;

public class DBManager {
	//https://www.programcreek.com/java-api-examples/index.php?api=com.microsoft.sqlserver.jdbc.SQLServerDataSource
	public Connection getConnection() throws Exception {
		//very aware this is bad practice now, would be changed if ever actually used
		SQLServerDataSource ds = new SQLServerDataSource();  
		ds.setUser("root");  
		ds.setPassword("masterPassword");  
		ds.setServerName("DESKTOP-B2CIVN1\\SQLEXPRESS");  
		//ds.setIntegratedSecurity(true);
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
