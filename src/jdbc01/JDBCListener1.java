package jdbc01;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.mariadb.jdbc.MariaDbPoolDataSource;

/**
 * Application Lifecycle Listener implementation class JDBCListener1
 *
 */
@WebListener
public class JDBCListener1 implements ServletContextListener {

	private MariaDbPoolDataSource pool = null;

	/**
	 * Default constructor.
	 */
	public JDBCListener1() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		if (pool != null) {
			pool.close();
		}
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext application = sce.getServletContext();

		String path = "/WEB-INF/db.properties";
		InputStream is = null;

		Connection connection = null;

		try {
			is = application.getResourceAsStream(path);

			Properties props = new Properties();
			props.load(is);

			// jdbc:mariadb://ip:port/schema?user=username&password=password

			String ip = props.getProperty("ip");
			String schema = props.getProperty("schema");
			String user = props.getProperty("user");
			String password = props.getProperty("password");

			String dburl = "jdbc:mariadb://" + ip + "/" + schema + "?user=" + user + "&password=" + password;

			pool = new MariaDbPoolDataSource(dburl);

			pool.setMaxPoolSize(1);

			connection = pool.getConnection();
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT 333");
			if (rs.next()) {
				// 333 출력되면 쿼리 실행 OK
				if (rs.getInt(1) == 333) {
					System.out.println("데이터베이스 연결 완료!");
				}
			}

			application.setAttribute("dbpool", pool);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

	}

}
