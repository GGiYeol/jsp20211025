package jdbc09;

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

import jdbc09.bean.ProductDto;
import jdbc09.dao.ProductDao;

/**
 * Servlet implementation class JDBC39Servlt
 */
@WebServlet("/jdbc09/s39")
public class JDBC39Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC39Servlet() {
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
		ProductDao dao = new ProductDao();
		List<ProductDto> list = null;
		
		// 2. request 분석
		
		// 3. business logic
		try (Connection con = ds.getConnection()) {
			list = dao.getList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attributes
		request.setAttribute("list", list);
		
		// 5. forward/redirect
		String path = "/WEB-INF/view/jdbc09/v39.jsp";
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
