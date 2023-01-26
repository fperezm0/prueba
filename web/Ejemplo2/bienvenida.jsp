<%-- 
    Document   : welcome
    Created on : Aug 8, 2022, 11:00:02 AM
    Author     : kike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<body>  
<%  
String name=request.getParameter("uname");  
out.print("Bienvenido "+name);  
%>  
</form>  
</body>  
</html> 
