package servlet;

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.UserInfo;

/**
 * Servlet implementation class RegsiterServlet
 */
@WebServlet("/RegsiterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		super.destroy();
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		boolean signFlag = true;
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String pwd1 = request.getParameter("pwd1");
		String sex = request.getParameter("sex");
		String address = request.getParameter("address");
		String type0 = request.getParameter("type");
		int type = Integer.parseInt(type0);
		String jump = request.getParameter("jump");
		System.out.println(username + pwd + sex + address);
		UserInfo user = new UserInfo();
		user.setUserName(username);
		user.setPassword(pwd);
		user.setGender(sex);
		user.setAddress(address);
		user.setType(type);
		try {
			if (!user.checkNameExist(user.getUserName())) {
				user.register();
				signFlag = false;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (jump.equals("0")) {
			if (!signFlag)
				out.print("<script>alert('注册成功!');window.location.href='login.jsp'</script>");
			else {
				out.print("<script>alert('用户已注册!');window.location.href='register.jsp'</script>");
			}
		} else {
			if (!signFlag)
				out.print("<script>alert('添加用户成功!');window.location.href='userManagement.jsp'</script>");
			else {
				out.print("<script>alert('用户已注册!');window.location.href='adduser.jsp'</script>");
			}
		}
	}

}
