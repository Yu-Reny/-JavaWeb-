package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbUtil {
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	private String dbUrl = "jdbc:Mysql://localhost:3306/mkcv?characterEncoding=utf-8&useSSL=false&serverTimezone=UTC";
	private String dbUserName="root";
	private String dbPassword="1234";
	public Connection getConnection() throws Exception{
		Class.forName(dbDriver);
		Connection connection=(Connection) DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		return connection;
	}
	public void closeCon(Connection connection) throws SQLException{
		if (connection!=null) {
			connection.close();
		}
	}
}
