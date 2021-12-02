package jdbc11;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc11.bean.Bank;
import jdbc11.dao.BankDao;

/**
 * Servlet implementation class JDBC43Servlet
 */
@WebServlet("/jdbc11/s43")
public class JDBC43Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC43Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/jdbc11/v43.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		BankDao dao = new BankDao();
		
		//request 분석/가공
		String moneyStr = request.getParameter("money");
		int money = Integer.parseInt(moneyStr);
		
	
		//business logic
		Connection con = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
		
		Bank bank2 = dao.getBankById(con,2);
		bank2.setMoney(bank2.getMoney() - money);
		
		dao.update(con, bank2);
		
		Bank bank1 = dao.getBankById(con, 1);
		bank1.setMoney(bank1.getMoney() + money);
		
		dao.update(con, bank1);
		
		con.commit();
		} catch (Exception e) {
			e.printStackTrace();
			
			if(con !=null) {
				
				try {
					con.rollback();
					
				} catch (SQLException e2) {
					e2.printStackTrace();
				}
			}
		}  finally {
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		
	
	}

}
