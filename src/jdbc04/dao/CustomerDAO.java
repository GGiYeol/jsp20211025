package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Customer;

public class CustomerDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<String>();

		String sql = "SELECT DISTINCT country FROM Customers ORDER BY country";

		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {

			while (rs.next()) {
				list.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Customer> getCustomerListByCountry(Connection con, String country) {
		List<Customer> list = new ArrayList<Customer>();
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE Country = ?";
		
		//?가 있을 때에는 preparedStatement 가 필요하다.
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, country);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Customer cus = new Customer();
					
					int i = 1;
					cus.setCustomerId(rs.getInt(i++));
					cus.setCustomerName(rs.getString(i++));
					cus.setContactName(rs.getString(i++));
					cus.setAddress(rs.getString(i++));
					cus.setCity(rs.getString(i++));
					cus.setPostalCode(rs.getString(i++));
					cus.setCountry(rs.getString(i++));
					
					list.add(cus);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean insert(Connection con, Customer customer) {

		String sql = "INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)"
				+ "  VALUES (?,?,?,?,?,?)";
		int rowCount = 0;
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			
			//물음표의 순서와 같게 매치시켜줘야 한다.
			pstmt.setString(1, customer.getCustomerName());
			pstmt.setString(2, customer.getContactName());
			pstmt.setString(3, customer.getAddress());
			pstmt.setString(4, customer.getCity());
			pstmt.setString(5, customer.getPostalCode());
			pstmt.setString(6, customer.getCountry());
			
			//이 sql이 실행되었을 때 영향을 미친 row의 개수를 리턴
			//우리는 하나의 레코드를 넣었기 때문에 1을 리턴할 것이다.
			
			//ddl 을 쓸때는 executeUpdate를 써야 한다.
			 rowCount = pstmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//그래서 잘 들어가있는지 확인(row가 하나 들어가니까, boolean문으로 제대로 됐는지 판별)
		return rowCount == 1;
	}

	public boolean update(Connection con, Customer customer) {
		String sql = "UPDATE Customers " + 
				"SET " + 
				"	CustomerName = ?," + 
				"    ContactName = ?," + 
				"    Address = ?," + 
				"    City = ?," + 
				"    PostalCode = ?," + 
				"    Country = ?" + 
				"WHERE" + 
				"    CustomerID = ?";
		
		int rowCount = 0;
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			int i = 1;
			pstmt.setString(i++, customer.getCustomerName());
			pstmt.setString(i++, customer.getContactName());
			pstmt.setString(i++, customer.getAddress());
			pstmt.setString(i++, customer.getCity());
			pstmt.setString(i++, customer.getPostalCode());
			pstmt.setString(i++, customer.getCountry());
			pstmt.setInt(i++, customer.getCustomerId());
			
			rowCount = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}
}









