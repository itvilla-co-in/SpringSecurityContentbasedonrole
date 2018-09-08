<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>itvilla Employee Home Page</title>
</head>

<body>
	<h2>USERS do something HOME PAGE HERE</h2>
	<hr>
	

	<security:authorize access="isAuthenticated()">
	Logged in USER  : <security:authentication property="principal.username" /> </br>
	HAS ROLE : <security:authentication property="principal.authorities" />  </br>
	</security:authorize>
	<hr>


<security:authorize access="hasRole('EMPLOYEE')">
Employee You do something here
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
Manager You do something here
</security:authorize>
</br></br>
<security:authorize access="hasRole('ADMIN')">
Admin You do something here
</security:authorize>
</br></br>

	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>