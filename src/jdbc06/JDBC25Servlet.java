package jdbc06;

import java.io.IOException;
import java.sql.Connection;

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
 * Servlet implementation class JDBC25Servlet
 */
@WebServlet("/jdbc06/s25")
public class JDBC25Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC25Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		boolean ok = false;
		
		//request 분석/가공
		Customer customer = new Customer();
		customer.setCustomerName("kimkilldong");
		customer.setContactName("kim");
		customer.setAddress("seoooul");
		customer.setCity("kim");
		customer.setCountry("japan");
		customer.setPostalCode("123123");
		customer.setCustomerId(101);
		//business logic
		try(Connection con = ds.getConnection()) {
			ok = dao.update(con, customer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
