package servlet07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class S05AddServlet
 */
@WebServlet("/servlet07/add")
public class S05AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S05AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/view/servlet07/s02add.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB대신 담아둘 session 만들기
		HttpSession session = request.getSession();
		List<String> list = (List<String>) session.getAttribute("todoList");
		if(list == null) {
			list = new ArrayList<>();
			session.setAttribute("todoList", list);
		}
		
		//parameter로 받은 값 설정
		String todo = request.getParameter("todo");
		todo = todo == null? "" : todo;
		
		//todo로 받은 값이 비어있지 않다면 값을 넘겨주는 설정
		if(!todo.isEmpty()) {
			list.add(todo);
		}
		
		//forward와 redirect
		String path = request.getContextPath() + "/servlet07/list";
		response.sendRedirect(path);
	}

}
