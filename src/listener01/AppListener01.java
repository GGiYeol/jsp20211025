package listener01;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class AppListner01
 *
 */
//어노테이션을 붙히면 필요할 때 실행시켜준다
@WebListener
public class AppListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("어플 종료됨. 리스너 1 종료");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
        
    		System.out.println("어플리케이션 실행됨. 리스너 1 작동");
    }
	
}
