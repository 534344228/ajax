package cn.shd.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.shd.model.Book;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class listBook
 */
@WebServlet("/listBook")
public class listBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Book> books = new ArrayList<>();
		Book book1 = new Book();
		book1.setId(1);
		book1.setName("Java编程思想");
		book1.setPrice(78.5);

		Book book2 = new Book();
		book2.setId(2);
		book2.setName("C#编程思想");
		book2.setPrice(100.5);
		
		books.add(book1);
		books.add(book2);
		
		response.setContentType("application/json;charset=UTF-8");
		JSONArray jsonArray = JSONArray.fromObject(books);
		response.getWriter().println(jsonArray);
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
