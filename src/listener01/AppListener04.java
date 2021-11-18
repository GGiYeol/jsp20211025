package listener01;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class AppListener04
 *
 */
//@WebListener
public class AppListener04 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener04() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("어플리케이션 종료. 리스너 4 동작작작");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("어플리케이션 작동. 리스너 4 동작작작");
    }
	
}
