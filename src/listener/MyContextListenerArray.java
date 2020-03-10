package listener;

import java.util.ArrayList;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import domain.City;
import domain.User;

/**
 * Application Lifecycle Listener implementation class MyContextListener
 *
 */
@WebListener
public class MyContextListenerArray implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MyContextListenerArray() {
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
    	 sce.getServletContext().setAttribute("array", new ArrayList<User>() {{
    		 add(new User("sasa", "12345"));
    	 }});
    	 sce.getServletContext().setAttribute("cities", new ArrayList<City>() {{
    		add(new City(11000, "Beograd"));
    		add(new City(15000, "Valjevo"));
    		add(new City(28000, "Mionica"));
    	 }});
    }
    
    
	
}
