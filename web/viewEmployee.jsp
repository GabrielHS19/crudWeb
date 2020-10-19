<%@page import="crud.Empleado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Proyecto CRUD</title>
</head>
<body>
	<%
		List<Empleado> lstEmployee = (List<Empleado>) request.getAttribute("lstEmployee");
	%>
	<div class="container-fluid">
		<hr>
		<div class="row-fluid">
			<div class="col-md-12">
				<a href='index.jsp' class="btn btn-success btn-xs">Nuevo
					Empleado</a>
				<h4 class="text-center">Lista de Empleados</h4>
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nombre</th>
							<th>Direccion</th>
							<th>Telefono</th>
							
						</tr>
					</thead>
					</tbody>
					<%
						for (Empleado e : lstEmployee) {
							out.print("<tr><td>" + e.getId() + "</td><td>" + e.getNombre() + "</td><td>" + e.getDireccion() + "</td><td>"
									+ e.getTelefono());
						}
					%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>