<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<%
	if (session.getAttribute("id") != "cat") 
		{											
	       session.removeAttribute("id");
%>
	<script>
	alert("BYE~BYE~");
	</script>
<%
	        response.setHeader("refresh","0.1;URL=index.jsp");
			con.close();
		}
%>
<%
	if (session.getAttribute("id") == "cat") {
		session.removeAttribute("backID");
%>
	<script>
	alert("BYE~BYE~");
	</script>
<%
	    response.setHeader("refresh","0.1;URL=index.jsp");
	    con.close();
	}
	
%>
