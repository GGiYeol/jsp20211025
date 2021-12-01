package jdbc10;

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

import jdbc10.bean.Customer;
import jdbc10.dao.CustomerDao;

/**
 * Servlet implementation class JDBC41Servlet
 */
@WebServlet("/jdbc10/s41")
public class JDBC41Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC41Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDao dao = new CustomerDao();
		List<Customer> list = null;
		int endPage = 1;

		// 2 request
		String pageStr = request.getParameter("page");
		if (pageStr == null || pageStr.isEmpty()) {
			pageStr = "1";
		}
		int page = Integer.parseInt(pageStr);
		int rowPerPage = 10;

		// 3 business logic
		try (Connection con = ds.getConnection()) {
			list = dao.getListPaging(con, page, rowPerPage);

			int total = dao.getTotal(con);
			endPage = (int) Math.ceil(((double) total) / rowPerPage);
//			endPage = ((total - 1) / rowPerPage) + 1;
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4 add attribute
		request.setAttribute("list", list);
		request.setAttribute("endPage", endPage);

		// 5.forward
		String path = "/WEB-INF/view/jdbc10/v41.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
