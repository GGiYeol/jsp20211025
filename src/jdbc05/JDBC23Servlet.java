package jdbc05;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class JDBC23Servlet
 */
@WebServlet("/jdbc05/s23")
public class JDBC23Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC23Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		List<String> list = null;
		
		// 3. business logic
		try (Connection con = ds.getConnection()) {
			list = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		request.setAttribute("countryList", list);
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc05/v23.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//사전작업
				ServletContext application = request.getServletContext();
				DataSource ds = (DataSource) application.getAttribute("dbpool");
				CustomerDAO dao = new CustomerDAO();
				boolean ok = false;
				//request 분석 가공
				String customerName = request.getParameter("customerName");
				String contactName = request.getParameter("contactName");
				String address = request.getParameter("address");
				String city = request.getParameter("city");
				String postalCode = request.getParameter("postalCode");
				String country = request.getParameter("country");
				
				Customer customer = new Customer();
				customer.setCustomerName(customerName);
				customer.setContactName(contactName);
				customer.setAddress(address);
				customer.setCity(city);
				customer.setPostalCode(postalCode);
				customer.setCountry(country);
				//business 로직
				try (Connection con = ds.getConnection()){
					ok = dao.insert(con,customer);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				//add attribute
				
				//forward, redirect
	
	}

}
