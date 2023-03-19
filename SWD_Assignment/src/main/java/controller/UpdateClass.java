package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import dao.AccountDAOImpl;
import model.Classes;
import model.Student;

/**
 * Servlet implementation class UpdateClass
 */
@WebServlet("/UpdateClass")
public class UpdateClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateClass() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("classId");
		request.setAttribute("id", id);
		request.getRequestDispatcher("view/UpdateClassTeacher.jsp").forward(request, response);
	}


/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
AccountDAO accountDAO = new AccountDAOImpl();
int id = Integer.parseInt(request.getParameter("classId"));

int teacher = Integer.parseInt(request.getParameter("teacherId"));		

 
	try {
		accountDAO.UpdateClassTeacher(id, teacher);
		response.sendRedirect("ClassList");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

}
