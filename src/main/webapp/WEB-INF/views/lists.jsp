<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.cfg.Configuration
,java.io.*,org.hibernate.Transaction,com.nagarro.EmployeePortal.rest.*,org.springframework.beans.factory.annotation.Autowired"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.btn {
  background-color: LightGray;
  border: none;
  color: red;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}

.btn:hover {
  background-color: black;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="border:solid black">
<h1 style="align:center ">Employee Portal</h1>
</div>
<br/><br/>
<form style="border:solid black" action="store" method="post">
Please select an image file to upload(Max Size 1 MB)<br/>
<input type="text" name="description" id="description"/>
<input type="file" id="img" name="img" accept="image/*" onchange="Filevalidation()">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="Submit"/>
<input type="reset" value="Cancel" />
<br/><br/>
<%!
@AutoWired
private EmployeeDAO employeedao; %>
<table>
<tr>
<th>Code</th>
<th>Name</th>
<th>Location</th>
<th>Email</th>
<th>Date of Birth</th>
<th>Actions</th>
</tr>
<%
for(Employee employee :list)
{
%>
<tr>
<td><% out.print(employee.getCode());%></td>
<td><% out.print(employee.getName()); %></td>
<td><%  out.print(employee.getLocation());%></td>
<td><% out.print(employee.getEmail()); %></td>
<td><%  out.print(employee.getDob());%></td>
<td></td>
</tr>
<%}%>
</table>
</form>
</body>
</html>