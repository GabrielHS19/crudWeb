<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.cloudsrcsoft.crud.Emp"%>
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
<title>Editar Empleado</title>
</head>
<body>
<%
		Emp employee = (Emp) request.getAttribute("employee");
	%>
	<div class="container-fluid">
		<div class="row-fluid">	
			<div class="col-md-6">
				<h4 class="text-center">Editar Empleado</h4>
				<form action="EditServlet2" method="post">
				    <input type="hidden" name="id" value="<%= employee.getId() %>">
					<div class = "form-group">
						<label for="name">Nombre:</label>
						<input type="text" class="form-control" name="name" value="<%= employee.getName() %>"/>
					</div>
					<div class="form-group">
						<label for="password">Contraseña:</label>
						<input type="password" class="form-control" name="password" value="<%= employee.getName() %>"/>
					</div>
					<div class="form-group">
						<label for="email">Correo:</label>
						<input type="email" class="form-control" name="email" value="<%= employee.getEmail() %>"/>
					</div>
					<div class="form-group">
						<label for="country">País:</label>
						<select name="country" class="form-control">
							<option selected='<%= employee.getCountry().equals("India")? "selected" : "" %>'>India</option>
							<option selected='<%= employee.getCountry().equals("Perú")? "selected" : "" %>'>Perú</option>
							<option selected='<%= employee.getCountry().equals("USA")? "selected" : "" %>'>USA</option>
							<option selected='<%= employee.getCountry().equals("UK")? "selected" : "" %>'>UK</option>
							<option selected='<%= employee.getCountry().equals("Otro")? "selected" : "" %>'>Otro</option>
						</select>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success" value="Guardar Empleado" />
					</div>
				</form>
			
				<br />
				<a href="ViewServlet">ver Empleados</a>
			</div>
		</div>
	</div>
</body>
</html>