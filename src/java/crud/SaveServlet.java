package crud;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/SaveServlet")
public class SaveServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("id");
		String nombre=request.getParameter("nombre");
		String direccion=request.getParameter("direccion");
		String telefono=request.getParameter("telefono");
		
                Long idd = Long.parseLong(id);
		Empleado e=new Empleado();
		e.setId(idd);
		e.setNombre(nombre);
		e.setDireccion(direccion);
		e.setTelefono(telefono);
		EmpleadoDAO dao = new EmpleadoDAO();
		boolean status=dao.ingresar(e);
		if(status == true){
			out.print("<p>Se guardo Correctamente!</p>");
			request.getRequestDispatcher("index.jsp").include(request, response);
		}else{
			out.println("No se pudo Guardar");
		}
		
		out.close();
	}

}
