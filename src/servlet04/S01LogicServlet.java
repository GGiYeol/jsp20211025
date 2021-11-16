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
 * Servlet implementation class S01LogicServlet
 */
@WebServlet("/servlet04/s01")
public class S01LogicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01LogicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		//3.비즈니스 로직 실행(CRUD-데이터 추가, 읽기, 수정, 삭제)->DB작업을 보통 하게 됨
		//실제 업무 코드가 들어가게 됨(EX.로그인, 로그아웃, 파일추가/삭제....)
		//데이터를 DB에서 읽었다고 치고 list 활용
		
		List<String> list = new ArrayList<>();
		list.add("pizza");
		list.add("chicken");
		list.add("cake");
		
		
		//4.set attibute
		request.setAttribute("foods", list);
		
		//5.forward
		String path = "/WEB-INF/view/servlet04/s01.jsp";
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
