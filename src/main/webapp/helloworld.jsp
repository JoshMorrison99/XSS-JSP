<html>
   <head>
      <title>XSS JSP</title>
   </head>
   
   <body>
      <h1>XSS JSP</h1>
      <ul>
         <li>
         	<p>Name:
            	<%= request.getParameter("name")%>
         	</p>
         </li>
      </ul>
   
   </body>
</html>