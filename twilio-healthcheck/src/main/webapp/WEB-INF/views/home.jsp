<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Check Service</title>
    </head>
    <body>
		<p>
        <c:choose>
			<c:when test="${empty website}">
				Service is not running.
			</c:when>
			<c:otherwise>
				Service is running for <c:out value="${website}"/>.
			</c:otherwise>
		</c:choose>
		<form method="post">
			Twilio SID: <input type="text" name="sid" /><br />
			Twilio Auth Token: <input type="text" name="token" /><br />
			Website: <input type="text" name="website" /><br />
			From Number: <input type="text" name="from" /><br />
			To Number: <input type="text" name="to" /><br />
			<input type="submit" value="RUN HEALTH CHECK" />
		</form>
    </body>
</html>
