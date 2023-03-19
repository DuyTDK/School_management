package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.AccountDAO;
import dao.AccountDAOImpl;




/**
 * Servlet implementation class UpdateStudent
 */
@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// TODO Auto-generated method stub
				String id = request.getParameter("studentId");
				request.setAttribute("id", id);
				request.getRequestDispatcher("view/UpdateStudentClass.jsp").forward(request, response);
			}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO accountDAO = new AccountDAOImpl();
		int id = Integer.parseInt(request.getParameter("studentId"));
		
		int classes = Integer.parseInt(request.getParameter("classId"));		
		
		 
			try {
				accountDAO.UpdateStudentClass(id, classes);
				response.sendRedirect("StudentList");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


