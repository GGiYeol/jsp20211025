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

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC26Servlet
 */
@WebServlet("/jdbc06/s26")
public class JDBC26Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC26Servlet() {
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
			SupplierDAO dao = new SupplierDAO();
			boolean ok = false;
			
			//request 분석/가공
			Supplier supplier = new Supplier();
			supplier.setSupplierName("kimkilldong");
			supplier.setContactName("kimkilldong");
			supplier.setAddress("kimkilldong");
			supplier.setCity("kimkilldong");
			supplier.setCountry("kimkilldong");
			supplier.setPostalCode("123123");
			supplier.setPhone("123123");
			supplier.setSupplierId(31);
			//business logic
			try(Connection con = ds.getConnection()) {
				ok = dao.update(con, supplier);
				
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
