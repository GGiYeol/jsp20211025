package jdbc10.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc10.bean.Customer;

public class CustomerDao {

	public List<Customer> getListPaging(Connection con, int page, int rowPerPage) {
		List<Customer> list = new ArrayList<>();
		String sql = "SELECT CustomerID, CustomerName, "
				+ "ContactName, Address, PostalCode, Country, City "
				+ "FROM Customers "
				+ "ORDER BY CustomerID "
				+ "LIMIT ?, ? ";

		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, (page - 1) * rowPerPage);
			pstmt.setInt(2, rowPerPage);

			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Customer cus = new Customer();

					cus.setCustomerID(rs.getInt("CustomerID"));
					cus.setCustomerName(rs.getString("CustomerName"));
					cus.setContactName(rs.getString("ContactName"));
					cus.setCity(rs.getString("City"));
					cus.setAddress(rs.getString("Address"));
					cus.setCountry(rs.getString("Country"));
					cus.setPostalCode(rs.getString("PostalCode"));

					list.add(cus);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public int getTotal(Connection con) {
		String sql = "SELECT count(*) FROM Customers ";

		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
