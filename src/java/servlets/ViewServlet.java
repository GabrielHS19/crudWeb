package servlets;


import crud.Empleado;
import crud.EmpleadoDAO;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
                EmpleadoDAO em = new EmpleadoDAO();
		List<Empleado> list=em.mostrarAll();
		request.setAttribute("lstEmployee", list);
		RequestDispatcher view = getServletContext().getRequestDispatcher("/viewEmployee.jsp");
		view.forward(request,response);
	}
}
