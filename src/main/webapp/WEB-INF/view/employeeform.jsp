<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<style>
body {
  background: linear-gradient(to bottom, #88A3E6 10%, #C5A3FF 90%);
  margin: 0;
  font-family: 'Arial', sans-serif;
  color: #333;
  text-align: center;
}
</style>
</head>
<body>

	<center>
		<h2>Add/Update Employee Details</h2>
		<form action="/ITProject/employees/save" method="POST">
			<table border="2">
				<tr>
					<td></td>
					<td><input type="hidden" name="empId" value="${employee.id}" /></td>
				</tr>
				<tr>
					<td>Employee Name</td>
					<td><input type="text" name="empName"
						value="${employee.employeeName}" /></td>
				</tr>
				<tr>
					<td>Employee Address</td>
					<td><input type="text" name="empAddr"
						value="${employee.employeeAddress}" /></td>
				</tr>
				<tr>
					<td>Employee Phone</td>
					<td><input type="text" name="empPhone"
						value="${employee.employeePhone}" /></td>
				</tr>
				<tr>
					<td>Employee Salary</td>
					<td><input type="text" name="empSalary"
						value="${employee.employeeSalary}" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="Save.." /></td>
					<td><input type="reset" value="ReSet..." /></td>
				</tr>

			</table>
		</form>
	</center>
</body>
</html>