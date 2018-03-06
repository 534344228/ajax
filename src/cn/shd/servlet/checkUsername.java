package cn.shd.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class checkUsername
 */
@WebServlet("/checkUsername")
public class checkUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> usernameList = new ArrayList<>();

	@Override
	public void init() throws ServletException {
		usernameList.add("张三");
		usernameList.add("李四");
		usernameList.add("王五");
		usernameList.add("赵四");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		username = new String(username.getBytes("ISO-8859-1"), "utf-8");
		if (usernameList.contains(username)) {
			// 存在
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().println("<font color='red'>用户名重复</font>");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().println("<font color='green'>用户名可用</font>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
