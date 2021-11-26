package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc08.bean.Bean10;
import jdbc08.dao.MyTable10Dao;

/**
 * Servlet implementation class JDBC35Servlet
 */
@WebServlet("/jdbc08/s35")
public class JDBC35Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC35Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/view/jdbc08/v35.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		MyTable10Dao dao = new MyTable10Dao();
		boolean ok = false;
		
		// 2. 
		String col1 = request.getParameter("col1");
		String col2 = request.getParameter("col2");
		String col3 = request.getParameter("col3");
		String col4 = request.getParameter("col4");
		String col5 = request.getParameter("col5");
		String col6 = request.getParameter("col6");
		String col7 = request.getParameter("col7");
		
		Bean10 bean = new Bean10();
		bean.setCol1(Integer.parseInt(col1));
		bean.setCol2(Double.parseDouble(col2));
		bean.setCol3(Double.parseDouble(col3));
		bean.setCol4(col4);
		bean.setCol5(col5);
		bean.setCol6(LocalDate.parse(col6));
		bean.setCol7(LocalDateTime.parse(col7));
		
		// 3.
		try (Connection con = ds.getConnection()) {
			dao.insert(con, bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}













