package cn.shd.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 * Servlet implementation class searchProduct
 */
@WebServlet("/searchProduct")
public class searchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, String[]> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		map.put("数码产品", new String[] { "itouch", "ipod", "iphone" });
		map.put("家用电器", new String[] { "冰箱", "电磁炉", "电视" });
		map.put("化妆护肤", new String[] { "itouch", "ipod", "SK-II" });

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		String[] products = map.get(category);
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().println("<table border='1'>");
		
		for (String string : products) {
			response.getWriter().println("<tr><td>"+string+"</td></tr>");
		}
		response.getWriter().println("</table>");
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
