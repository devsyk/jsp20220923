package listener.chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class ServletContextLIstener01
 *
 */
//@WebListener
public class ServletContextLIstener03 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextLIstener03() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletContext application = sce.getServletContext();
        String param1 = application.getInitParameter("init-param1");
        String param2 = application.getInitParameter("init-param2");
    	
        System.out.println(param1); //init-value1
        System.out.println(param2); //init-value2
    }
	
}
