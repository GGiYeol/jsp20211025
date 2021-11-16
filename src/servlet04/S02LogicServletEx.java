package servlet04;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02LogicServletEx
 */
@WebServlet("/servlet04/s02")
public class S02LogicServletEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02LogicServletEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//3. 여행가고 싶은 곳 list작성
		List<String> list = new ArrayList<>();
		list.add("대만");
		list.add("프랑스");
		list.add("오스트리아");
		list.add("체코");
		
		//4.리스트를 request attribute에 추가
		request.setAttribute("locations", list);
		
		
		//5. jsp로 forward
		String path = "/WEB-INF/view/servlet04/s02.jsp";
		
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
