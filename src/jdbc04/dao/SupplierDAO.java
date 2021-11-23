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
					sup.setSupplierId(rs.getInt(i++));
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

}
