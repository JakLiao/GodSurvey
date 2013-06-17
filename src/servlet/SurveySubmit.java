package servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class SurveySubmit
 */
@WebServlet("/SurveySubmit")
public class SurveySubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SurveySubmit() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		QuestionDao questionDao = new QuestionDaoImpl();

		HttpSession session = request.getSession();
		Integer paperIdString = (Integer) session.getAttribute("paperId");
		int paperId = paperIdString.intValue();

		String totalNumString = request.getParameter("totalNum");
		int totalNum = Integer.parseInt(totalNumString);

		String answers[] = new String[totalNum];

		for (int i = 0; i < answers.length; i++) {
			String ss = "q" + (i + 1);
			String answerString = request.getParameter(ss);
			//System.out.println(i+"ss: "+ss+"answerString "+answerString);
			answers[i] = answerString; // 得到答案的字符串
		}
		List<Question> questions = questionDao.findQuestionsByPaperId(paperId);
		int qstId = 0; // 记录题号
		for (Question question : questions) {
			if (question.getQstType() == 1 || question.getQstType() == 3) {
				String string = question.getQstAnswer();
				String regex = "&";
				String[] answerNumString = string.split(regex);
				int[] answerNum = new int[answerNumString.length];
				for (int i = 0; i < answerNumString.length; i++) {
					answerNum[i] = Integer.parseInt(answerNumString[i]);
				}
				int k = Integer.parseInt(answers[qstId]);
				switch (k+1) {
				case 1:
					answerNum[0] += 1;
					break;
				case 2:
					answerNum[1] += 1;
					break;
				case 3:
					answerNum[2] += 1;
					break;
				case 4:
					answerNum[3] += 1;
					break;
				default:
					break;
				}
				// 将修改后的答案写入数据库
				String newAnswer = answerNum[0] + "&" + answerNum[1] + "&"
						+ answerNum[2] + "&" + answerNum[3];

				questionDao.updateQuestions(question.getQstId(), newAnswer);

			} else if (question.getQstType() == 2) {
				questionDao.updateQuestions(question.getQstId(), answers[qstId]);
			}
			qstId++;
		}
		response.sendRedirect("showResultAfterAnswer.jsp");
	}

}
