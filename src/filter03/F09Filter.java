package filter03;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class F09Filter
 */
//@WebFilter("/F09Filter")
public class F09Filter implements Filter {

    /**
     * Default constructor. 
     */
    public F09Filter() {
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
		// TODO Auto-generated method stub
		// place your code here
			System.out.println("필터 9 동작");
			String user = request.getParameter("user");
			// pass the request along the filter chain
			if(user !=null && user.equals("notok")) {//param user가 notok면 서블릿 실행하지 않음
				String path = "/WEB-INF/view/filter03/09notok.jsp";
				request.getRequestDispatcher(path).forward(request, response);
			} else {
				
				chain.doFilter(request, response);
			}
		}
	//request, response를 그대로 사용하기때문에
	//forward나 redirect를 사용할 수 있다.
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
