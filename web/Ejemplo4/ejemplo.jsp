<%-- 
    Document   : ejemplo4
    Created on : Aug 8, 2022, 11:06:23 AM
    Author     : kike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<body>  
<%!   
int cubo(int n){
    int cub =n*n*n;
return cub;  
}  
%>  
<%= "el cubo de 3 es :"+cubo(3) %>  
</body>  
</html>  