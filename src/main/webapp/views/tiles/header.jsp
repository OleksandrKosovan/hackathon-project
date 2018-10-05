<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="css/header.css">

<nav id="nav-1">
	<a class="link-1" href="index">Home</a> <a class="link-1" href="#">About</a>
	<a class="link-1" href="#">Contact</a> <a class="link-1" href="#">Shop</a>
</nav>


<sec:authorize access="isAuthenticated()">

	<form:form action="logout" method="post">
		<button>logout</button>
	</form:form>

</sec:authorize>

<sec:authorize access="!isAuthenticated()">
	<br>
	<form:form action="loginpage" method="get">
		<button>login</button>
	</form:form>
	<br>
	<form:form action="registration" method="get">
		<button>registration</button>
	</form:form>
	<br>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">

	<form:form action="base" method="get">
		<button>admin</button>
	</form:form>

</sec:authorize>

<sec:authentication property="name" />


