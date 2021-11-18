package filter04;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class F10MemberFilter
 */
// @WebFilter("/F10MemberFilter")
public class F10MemberFilter implements Filter {

    /**
     * Default constructor. 
     */
    public F10MemberFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		// TODO Auto-generated method stub
		// place your code here
		HttpSession session = req.getSession();
		
		String logedIn = (String) session.getAttribute("logedIn");

		// pass the request along the filter chain
		if (logedIn != null && logedIn.equals("ok")) {
			chain.doFilter(request, response);
		} else {
			String location = req.getContextPath() + "/filterex4/login";
			res.sendRedirect(location);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
