<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
	
	<head>
		<title>Simple JSP Application</title>
	</head>
	<body>
		<h1>Hello Ziv!</h1>
		<h2>Thank you for interesting course, good luck in the next semester!</h2>
		<h3>Current time is <%= LocalDateTime.now() %></h3>
		
		
		
		
	</body>
</html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Echoing HTML Request Parameters</title>
</head>
     	
	
	
<body>
  <h2>Choose our grade:</h2>
  <form method="get">
    <input type="checkbox" name="author" value="נכשל">fail
    <input type="checkbox" name="author" value="עובר">pass
    <input type="checkbox" name="author" value="100 ,good job ">100
    <input type="submit" value="Query">
  </form>
  
  <% 
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected grade(s):</h3>
    <ul>
      <%
      for (String author : authors) { 
      %>
        <li><%= author %></li>
      <%
      }
      %>
    </ul>
  <%
  }
  %>
  <br /><a href="<%= request.getRequestURI() %>">BACK</a> 
<body>
</html>
