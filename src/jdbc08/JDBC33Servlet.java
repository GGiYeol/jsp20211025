package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC33Servlet
 */
@WebServlet("/jdbc08/s33")
public class JDBC33Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC33Servlet() {
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
				
				
				String sql = "SELECT col1, col2, col3, col4, col5, col6, col7 FROM mytabel10";
				
				try(Connection con = ds.getConnection();
						Statement stmt = con.createStatement();
						ResultSet rs  = stmt.executeQuery(sql);) {
					while(rs.next()) {
						
						//LocalDate
						java.sql.Date col6 = rs.getDate("col6");
						//LocalDateTime
						java.sql.Timestamp col7 = rs.getTimestamp("col7");
						
						java.time.LocalDate date = col6.toLocalDate();
						java.time.LocalDateTime dateTime = col7.toLocalDateTime();
						
						
						
						System.out.println(col6 + ", " + col7);
						
						System.out.println(date + ", " + dateTime);
					}
					
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
