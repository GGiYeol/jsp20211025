package jdbc07;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC30Servlet
 */
@WebServlet("/JDBC30Servlet")
public class JDBC30Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC30Servlet() {
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
				
				//request 분석
				int supplierID = Integer.parseInt(request.getParameter("id"));
				
				//business logic
				try(Connection con = ds.getConnection()) {
					ok = dao.deleteById(con, supplierID);
					
				} catch (Exception e) {
					e.printStackTrace();
				} 
				
				//add attribute
				
				//5.forward / redirect
				String path = "/WEB-INF/view/jdbc06/v29.jsp";
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
