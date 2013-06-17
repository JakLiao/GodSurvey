package servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Question;
import com.dao.QuestionDao;
import com.dao.mysqlimpl.QuestionDaoImpl;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/QuestionServlet")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QuestionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		this.destroy();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Question question = new Question();
		QuestionDao questionDao = new QuestionDaoImpl();

		HttpSession session = request.getSession();
		Integer paperIdString = (Integer) session.getAttribute("paperId");
		int paperId = paperIdString.intValue();
		question.setPaperId(paperId);

		String qstTitle0 = request.getParameter("qstTitle");
		String qstTitle = new String(qstTitle0.getBytes("ISO-8859-1"), "utf-8");
		question.setQstTitle(qstTitle);

		String qstTypeString = request.getParameter("qstType");
		int qstType = Integer.parseInt(qstTypeString);
		question.setQstType(qstType);

		if (qstType == 1 || qstType == 3) {
			String qstNum10 = request.getParameter("qstOption1");
			String qstNum1 = new String(qstNum10.getBytes("ISO-8859-1"),
					"utf-8");

			String qstNum20 = request.getParameter("qstOption2");
			String qstNum2 = new String(qstNum20.getBytes("ISO-8859-1"),
					"utf-8");

			String qstNum30 = request.getParameter("qstOption3");
			String qstNum3 = new String(qstNum30.getBytes("ISO-8859-1"),
					"utf-8");

			String qstNum40 = request.getParameter("qstOption4");
			String qstNum4 = new String(qstNum40.getBytes("ISO-8859-1"),
					"utf-8");

			String content = qstNum1 + "#" + qstNum2 + "#" + qstNum3 + "#"
					+ qstNum4;
			question.setQstOption(content);
		} else {
			question.setQstOption("");
		}
		question.setQstAnswer("0&0&0&0"); // 初始化问题答案
		questionDao.addQuestions(question);
		response.sendRedirect("addQuestionSuccess.jsp");
	}

}
