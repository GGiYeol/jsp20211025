package jdbc06;

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

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC28Servlet
 */
@WebServlet("/jdbc06/s28")
public class JDBC28Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC28Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get : 화면으로 forward

		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		Supplier supplier = null;
		List<String> countryList = null;

		// 2. request 분석
		int supplierID = Integer.parseInt(request.getParameter("id"));

		// 3. business logic
		try (Connection con = ds.getConnection()) {
			supplier = dao.selectById(con, supplierID);
			countryList = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("supplier", supplier);
		request.setAttribute("countryList", countryList);

		// 5. forward
		String path = "/WEB-INF/view/jdbc06/v28.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// post : update db

		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;

		// 2. request 분석/가공
		Supplier supplier = new Supplier();
		supplier.setSupplierName(request.getParameter("supplierName"));
		supplier.setContactName(request.getParameter("contactName"));
		supplier.setCity(request.getParameter("city"));
		supplier.setCountry(request.getParameter("country"));
		supplier.setAddress(request.getParameter("address"));
		supplier.setPostalCode(request.getParameter("postalCode"));
		supplier.setPhone(request.getParameter("phone"));
		supplier.setSupplierID(Integer.parseInt(request.getParameter("supplierID")));

		// 3. business logic
		try (Connection con = ds.getConnection()) {
			ok = dao.update(con, supplier);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute

		// 5. forward / redirect
	}

}
