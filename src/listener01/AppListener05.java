package listener01;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class AppListener
 *
 */
//@WebListener
public class AppListener05 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener05() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("앱 종료. 5번 리스너 작동");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("앱 실행. 5번 리스너 작동");
    	
    	ServletContext application = sce.getServletContext();
    	application.setAttribute("appAttr1", "appVal1");
    	application.setAttribute("appAttr2", "appVal2");
    	
    	//context path를 application attribute에 추가
    	String contextPath = application.getContextPath();
    	application.setAttribute("appRoot", contextPath);
    }
	
}
