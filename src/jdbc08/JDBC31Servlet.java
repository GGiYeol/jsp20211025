package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC31Servlet
 */
@WebServlet("/jdbc08/s31")
public class JDBC31Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC31Servlet() {
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
		
		
		
		//실제로 사용할 때에는 dao 사용 안함
		String sql = "INSERT INTO mytabel10 (col1, col2, col3, col4, col5, col6, col7) VALUES(?,?,?,?,?,?,?)";
		try(Connection con = ds.getConnection(); 
		//prepared statement로 값을 채우기
		PreparedStatement pstmt = con.prepareStatement(sql);) 
		{
			pstmt.setInt(1, 999999);
			pstmt.setDouble(2, 3.14);
			pstmt.setDouble(3, 3.121212);
			pstmt.setString(4, "my");
			pstmt.setString(5, "kimkilldong");
			pstmt.setDate(6, java.sql.Date.valueOf("2021-11-26"));
			pstmt.setTimestamp(7, java.sql.Timestamp.valueOf("2021-11-26 09:33:12"));
			
			
			pstmt.executeQuery();
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
