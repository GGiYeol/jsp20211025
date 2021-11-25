package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Supplier;

public class SupplierDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();
		String sql = "SELECT DISTINCT Country FROM Suppliers ORDER BY Country";

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

	public List<Supplier> getSupplierListByCountry(Connection con, String country) {
		List<Supplier> list = new ArrayList<>();
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City," + " PostalCode, Country, Phone  "
				+ "FROM Suppliers WHERE Country = ?";

		try (PreparedStatement stmt = con.prepareStatement(sql);) {

			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {

				while (rs.next()) {
					Supplier sup = new Supplier();

					int i = 1;
					sup.setSupplierID(rs.getInt(i++));
					sup.setSupplierName(rs.getString(i++));
					sup.setContactName(rs.getString(i++));
					sup.setAddress(rs.getString(i++));
					sup.setCity(rs.getString(i++));
					sup.setPostalCode(rs.getString(i++));
					sup.setCountry(rs.getString(i++));
					sup.setPhone(rs.getString(i++));

					list.add(sup);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean insert(Connection con, Supplier supplier) {
		String sql = "INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country, Phone)"
	+"  VALUES(?,?,?,?,?,?,?)";
		
		int rowCount = 0;
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, supplier.getSupplierName());
			pstmt.setString(2, supplier.getContactName());
			pstmt.setString(3, supplier.getAddress());
			pstmt.setString(4, supplier.getCity());
			pstmt.setString(5, supplier.getPostalCode());
			pstmt.setString(6, supplier.getCountry());
			pstmt.setString(7, supplier.getPhone());
			
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}

	public boolean update(Connection con, Supplier supplier) {

		String sql = "UPDATE Suppliers " + 
				"SET " + 
				"	SupplierName = ?," + 
				"    ContactName = ?," + 
				"    Address = ?," + 
				"    City = ?," + 
				"    PostalCode = ?," + 
				"    Country = ?," + 
				"    Phone = ?" + 
				"WHERE" + 
				"    SupplierID = ?";
		
		int rowCount = 0;
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			int i = 1;
			pstmt.setString(i++, supplier.getSupplierName());
			pstmt.setString(i++, supplier.getContactName());
			pstmt.setString(i++, supplier.getAddress());
			pstmt.setString(i++, supplier.getCity());
			pstmt.setString(i++, supplier.getPostalCode());
			pstmt.setString(i++, supplier.getCountry());
			pstmt.setString(i++, supplier.getPhone());
			pstmt.setInt(i++, supplier.getSupplierID());
			
			rowCount = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}

	public Supplier selectById(Connection con, int supplierID) {
		String sql = "SELECT SupplierName, "
				+ "          ContactName, "
				+ "          Address, "
				+ "          City, "
				+ "          PostalCode,"
				+ "          Country, "
				+ "          Phone "
				+ "   FROM Suppliers "
				+ "   WHERE SupplierID = ?";
		
		Supplier supplier = new Supplier();
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, supplierID);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				
				if (rs.next()) {
					supplier.setAddress(rs.getString("Address"));
					supplier.setSupplierName(rs.getString("SupplierName"));
					supplier.setContactName(rs.getString("ContactName"));
					supplier.setCity(rs.getString("City"));
					supplier.setPostalCode(rs.getString("PostalCode"));
					supplier.setCountry(rs.getString("Country"));
					supplier.setPhone(rs.getString("Phone"));
					supplier.setSupplierID(supplierID);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return supplier;
	}

	public boolean deleteById(Connection con, int supplierID) {
		String sql = "DELETE FROM Suppliers"
				+ "  WHERE SupplierID = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, supplierID);
			
			int count = pstmt.executeUpdate();
			return count == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
