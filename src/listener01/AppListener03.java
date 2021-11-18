package listener01;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class AppListener03
 *
 */
//@WebListener
//WEB-XML에 등록할것
public class AppListener03 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener03() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("어플리케이션 종료됨. 리스너 3 동작");
    	
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("어플리케이션 실행됨. 리스너 3번 동작");
    }
	
}
