package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC07Servlet
 */
@WebServlet("/jdbc02/s07")
public class JDBC07Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC07Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource) application.getAttribute("dbpool");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs  = null;
		
		Customer bean = new Customer();
		
		//request 분석/가공
		
		//비지니스 로직
		String sql = "SELECT CustomerName, ContactName, Address, City FROM Customers WHERE CustomerID = 1";
		
		try {
			con = pool.getConnection();
			
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int i = 1;
				
				bean.setCustomerName(rs.getString(i++));
				bean.setContactName(rs.getString(i++));
				bean.setAddress(rs.getString(i++));
				bean.setCity(rs.getString(i++));
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt !=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		//add attribute
		
		request.setAttribute("customer", bean);
		
		//forward or redirect
		String path = "/WEB-INF/view/jdbc02/v07.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
