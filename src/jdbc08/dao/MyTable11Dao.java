package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc08.bean.Bean11;

public class MyTable11Dao {

	public boolean insert(Connection con, Bean11 bean) {
		
		String sql = "INSERT INTO mytable11 (col1, col2, col3, col4, col5, col6)"
					+ "VALUE(?, ?, ?, ?, ?, ?)";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setString(1, bean.getCol1());
			pstmt.setInt(2, bean.getCol2());
			pstmt.setDate(3, Date.valueOf(bean.getCol3()));
			pstmt.setString(4, bean.getCol4());
			pstmt.setString(5, bean.getCol5());
			pstmt.setString(6, bean.getCol6());
			
			return pstmt.executeUpdate() == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
		
	}

	public List<Bean11> getList(Connection con) {
		List<Bean11> list = new ArrayList<>();
		String sql = "SELECT col1, col2, col3, col4, col5, col6 FROM mytable11";
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			
			while (rs.next()) {
				Bean11 bean = new Bean11();
				
				bean.setCol1(rs.getString("col1"));
				bean.setCol2(rs.getInt("col2"));
				bean.setCol3(rs.getDate("col3").toLocalDate());
				bean.setCol4(rs.getString("col4"));
				bean.setCol5(rs.getString("col5"));
				bean.setCol6(rs.getString("col6"));
				
				list.add(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
