//package crud;
//
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//@WebServlet("/EditServlet")
//public class EditServlet extends HttpServlet {
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String sid=request.getParameter("id");
//		int id=Integer.parseInt(sid);
//		
//		Emp e=EmpDao.getEmployeeById(id);
//		
//		request.setAttribute("employee", e);
//		RequestDispatcher view = getServletContext().getRequestDispatcher("/editEmployee.jsp");
//		view.forward(request, response);
//	}
//}
