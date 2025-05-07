package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;

import pojo.User;
import utils.DbUtil;

public class UserDB {

	static DbUtil dbUtil=new DbUtil();
	//注册时判断用户名是否存在
		public static boolean UserExists(String username)  {
			//可以建立一个连接池保存一定数量的连接，当有对象需要数据库连接时，直接将这个连接返回给该对象，
			Connection connection;
			try {
				connection = dbUtil.getConnection();

				PreparedStatement ps = null;
				ResultSet rs = null;
				
				String qr = "SELECT username FROM User "+ "WHERE username = ?";
				try {
					ps = (PreparedStatement) connection.prepareStatement(qr);
					ps.setString(1, username);
					rs = ps.executeQuery();
					return rs.next();
				} catch (SQLException e) {
					System.out.println(e);
					return false;
				} finally {
						dbUtil.closeCon(connection);
					
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
				return false;
			}
			
		}
		//将注册用户信息保存至数据库
		public static int insert(User user)  {
			Connection connection;
			try {
				connection = dbUtil.getConnection();
				PreparedStatement ps = null;
				
				String qr = "INSERT INTO User (username, password,email,tel)"+"VALUES (?, ?,?,?)";
				try { 
					
					ps = (PreparedStatement) connection.prepareStatement(qr);
					ps.setString(1, user.getUsername());
					ps.setString(2,user.getPassword() );
					ps.setString(3, user.getEmail());
					ps.setString(4, user.getTel());
					
					return ps.executeUpdate();
				} catch (SQLException e) {
					System.out.println(e);
					return 0;
				} finally {
					dbUtil.closeCon(connection);
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
				return 0;
			} 
			
		}public static int update(User user)  {
			Connection connection;
			try {
				connection = dbUtil.getConnection();
				PreparedStatement ps = null;
				
				String qr = "UPDATE User SET password=?  WHERE username=?;";
				try { 
					
					ps = (PreparedStatement) connection.prepareStatement(qr);
					ps.setString(2, user.getUsername());
					ps.setString(1,user.getPassword());
					
					return ps.executeUpdate();
				} catch (SQLException e) {
					System.out.println(e);
					return 0;
				} finally {
					dbUtil.closeCon(connection);
				}
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			} 
			
		}
		public static User selectUser(String username) {
			//可以建立一个连接池保存一定数量的连接，当有对象需要数据库连接时，直接将这个连接返回给该对象，
			Connection connection;
			try {
				connection = dbUtil.getConnection();
				PreparedStatement ps = null;
				ResultSet rs = null;
				//sql语句
				String qr = "SELECT * FROM User "+ "WHERE username = ?";
				try {
					ps = (PreparedStatement) connection.prepareStatement(qr);
					//sql语句中问号的解释
					ps.setString(1, username);
					rs = ps.executeQuery();
					User user = null;
					if (rs.next()) {
						user = new User ();
						//设置userd的id,username,passward
						user.setId(rs.getInt("id"));
						user.setUsername(rs.getString("username"));
						user.setPassword(rs.getString("password"));
						user.setEmail(rs.getString("email"));
						user.setTel(rs.getString("tel"));
					}
					return user;
				} catch (SQLException e) {
					System.out.println(e);
					return null;
					} finally {
						//关闭PreparedStatement和ResultSet并释放连接池中此次连接
						dbUtil.closeCon(connection);;
					}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
				return null;
			}
		}
}