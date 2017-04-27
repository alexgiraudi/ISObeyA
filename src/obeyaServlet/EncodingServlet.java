package obeyaServlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletConfig;
/**
 * Servlet implementation class EncodingServlet
 */

 

 

@WebServlet("/EncodingServlet")
public abstract class EncodingServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7033897732560663256L;
	public static final String ENCODING = "encoding";
	private String encoding;

	public void init(ServletConfig servletConfig)throws ServletException
	{
		this.encoding = servletConfig.getInitParameter(ENCODING);
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws IOException, ServletException
	{
		req.setCharacterEncoding(encoding);
		resp.setContentType("text/html;charset="+encoding);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws IOException, ServletException
	{
		req.setCharacterEncoding(encoding);
		resp.setContentType("text/html;charset="+encoding);
	}
 

public static String transformStringEncoding(String init, String encodingBefore, 
		String encodingAfter)
{
	try
	{
		return new String(init.getBytes(encodingBefore), encodingAfter);
	}
	catch (UnsupportedEncodingException uee)
	{
	return null;
	}
}

}