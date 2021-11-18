package servlet08;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S04BookRemoveServlet
 */
@WebServlet("/servlet08/remove")
public class S04BookRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S04BookRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 작업
		HttpSession session = request.getSession();
		List<Bean06> books = (List<Bean06>) session.getAttribute("books");
		
		// 2. 요청 처리(파라미터 수집/가공)
		String indexStr = request.getParameter("id");
		int index = Integer.parseInt(indexStr);
		
		// 3. business 로직 
		books.remove(index);
		
		// 4. data를 attribute에 추가
		
		
		// 5. forward / redirect
		String location = request.getContextPath() + "/servlet08/list";
		response.sendRedirect(location);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
