

  <%
  String   str   =   request.getServletPath();  
  //out.println(str   +   "<br>");  
  str   =   str.substring(0,str.lastIndexOf("/"));  
 // out.println(str   +   "<br>");  
  
  /*
  str   =   str.substring(0,str.lastIndexOf("/"));  
  out.println(str   +   "<br>");
  */
  %>
  <%=str %>
  <%
if(request.getQueryString()!=null){
	out.println("?" + str); 
}
%>

  

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
  <%=request.getQueryString() %>
  <body>
   <%
/*
out.println("Protocol: " + request.getProtocol() + "<br>");

out.println("Server Info: " + getServletConfig().getServletContext().getServerInfo() + "<br>");

out.println("Remote Addr: " + request.getRemoteAddr() + "<br>");

out.println("Remote Host: " + request.getRemoteHost() + "<br>");

out.println("Character Encoding: " + request.getCharacterEncoding() + "<br>");

out.println("Content Length: " + request.getContentLength() + "<br>");

out.println("Content Type: "+ request.getContentType() + "<br>");

out.println("Auth Type: " + request.getAuthType() + "<br>");

out.println("HTTP Method: " + request.getMethod() + "<br>");

out.println("Path Info: " + request.getPathInfo() + "<br>");

out.println("Path Trans: " + request.getPathTranslated() + "<br>");

out.println("Query String: " + request.getQueryString() + "<br>");

out.println("Remote User: " + request.getRemoteUser() + "<br>");

out.println("Session Id: " + request.getRequestedSessionId() + "<br>");

out.println("Request URI: " + request.getRequestURI() + "<br>");

out.println("Servlet Path: " + request.getServletPath() + "<br>");

out.println("Accept: " + request.getHeader("Accept") + "<br>");

out.println("Host: " + request.getHeader("Host") + "<br>");      

out.println("Referer : " + request.getHeader("Referer") + "<br>");      

out.println("Accept-Language : " + request.getHeader("Accept-Language") + "<br>");      

out.println("Accept-Encoding : " + request.getHeader("Accept-Encoding") + "<br>");      

out.println("User-Agent : " + request.getHeader("User-Agent") + "<br>");      

out.println("Connection : " + request.getHeader("Connection") + "<br>");      

out.println("Cookie : " + request.getHeader("Cookie") + "<br>");      

out.println("Created : " + session.getCreationTime() + "<br>");      

out.println("LastAccessed : " + session.getLastAccessedTime() + "<br>");      

out.println("Scheme: " + request.getScheme() + "<br>");

out.println("Server Name: " + request.getServerName() + "<br>" );

out.println("Server Port: " + request.getServerPort() + "<br>");

out.println("Protocol: " + request.getProtocol() + "<br>");

        
*/
%>
  </body>
</html>
