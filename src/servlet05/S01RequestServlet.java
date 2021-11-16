package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S01Request
 */
@WebServlet("/servlet05/s01")
public class S01RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//2. request 분석, request parameter 처리/가공
		//요청경로나 쿼리스트링을 분석하면 됨.
		String param = request.getParameter("info");
		//null이 아닌지도 판단을 해야 함
		
		
		//3. business logic
		List<String> list = new ArrayList<>();
		String title ="";
		if(param.equals("travle")) {
			//여행 관련 일
			list.add("seoul");
			list.add("jeju");
			list.add("paris");
			title ="여행가고싶은곳";
		}else if(param.equals("food")) {
			//음식 관련 일.
			list.add("pizza");
			list.add("cake");
			title="좋아하는 음식";
		}
		//4. set attribute
		request.setAttribute("title", title);
		request.setAttribute("list", list);
		//5.forward
		String path = "/WEB-INF/view/servlet05/s01.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
