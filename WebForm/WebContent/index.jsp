<html>
	<head>
		<title>Tick the author</title>
	</head>
<body>
	<form method="get">
	<h3>Please tick the best author(s) and press Submit button</h3>
	<input type="checkbox"  name = "author" value="Bruce Eckel">Bruce Eckel<br>
	<input type="checkbox" name = "author" value="John Krammer">John Krammer<br>
	<input type="checkbox" name = "author" value="James Gosling">James Gosling<br>
	<input type="checkbox"  name = "author" value="Andrew Hunt">Andrew Hunt<br>
	<input type="checkbox" name = "author" value="Scott Ambler">Scott Ambler<br>
	<input type="submit" value="Vote">
</form>
	<%
		String[] authors = request.getParameterValues("author");
		if(authors !=null){
	%>
	<h3>Thank You for voting!</h3><br><h2>You selected following author(s):</h2><br>
	<ul>
	<%
		for(int i=0;i<authors.length;i++){
	%>
	<li><%=authors[i]%></li>
	 <%
      }
 	 %>
    </ul>
    <a href="<%= request.getRequestURI() %>">Return back</a>
  <%
  }
  %>
</body>
</html>