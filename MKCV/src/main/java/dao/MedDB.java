package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

import utils.DbUtil;

public class MedDB {
	public ResultSet name(Connection con,String name) throws Exception {
		String str="select * from med where title like '%"+name+"%' ORDER BY CHAR_LENGTH(title)";
		
		PreparedStatement pstmt=con.prepareStatement(str);
		return pstmt.executeQuery();
	}
}
