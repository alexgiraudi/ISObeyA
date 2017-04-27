package obeyaServlet;

import java.io.IOException;
import java.sql.Driver;
import java.sql.DriverManager;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class EncodingFilter implements Filter {
	public static final String ENCODING = "encoding";
	private String encoding;

	public void init(FilterConfig filterConfig) throws ServletException
	{
		this.encoding = filterConfig.getInitParameter(ENCODING);
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
		FilterChain filterChain)throws IOException, ServletException
	{
		req.setCharacterEncoding(encoding);
		resp.setContentType("text/html;charset=UTF-8");
		filterChain.doFilter(req, resp);
	}
	
	/**
	 * Destroys the servlet cleanly by unloading JDBC drivers.
	 * 
	 * @see javax.servlet.GenericServlet#destroy()
	 */
	public void destroy() {
	    String prefix = getClass().getSimpleName() +" destroy() ";
	   
	    try {
	        Enumeration<Driver> drivers =DriverManager.getDrivers();
	        while(drivers.hasMoreElements()) {
	            DriverManager.deregisterDriver(drivers.nextElement());
	        }
	    } catch(Exception e) {
	    	System.out.println(prefix + "Exception caught while deregistering JDBC drivers");
	    }
	    System.out.println(prefix + "complete");
	}
}