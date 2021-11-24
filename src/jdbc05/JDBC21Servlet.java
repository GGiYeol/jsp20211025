package jdbc05;

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
 * Servlet implementation class JDBC21
 */
@WebServlet("/jdbc05/s21")
public class JDBC21Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC21Servlet() {
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
		//request 분석 가공
		Customer customer = new Customer();
		customer.setCustomerName("son");
		customer.setContactName("hm");
		customer.setAddress("gangnam");
		customer.setCity("seoul");
		customer.setPostalCode("8888");
		customer.setCountry("korea");
		//business 로직
		try (Connection con = ds.getConnection()){
			ok = dao.insert(con,customer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//add attribute
		
		//forward, redirect
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
