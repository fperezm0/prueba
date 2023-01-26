<%-- 
    Document   : p
    Created on : Aug 9, 2022, 12:25:39 PM
    Author     : kike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! int numeroAccesos=0; %>
<html>
<body>
<%=
"La página ha sido accedida "+(++numeroAccesos)+
" veces desde el arranque del servidor"
%>
</body>
</html>
<%! java.util.Date primerAcceso=new java.util.Date(); %>
<html>
<body>
    El primer acceso a la página se realizo en: </br>
<%= primerAcceso %>
</body>
</html>
<%!
private String ahora()
{
return "con metodos"+new java.util.Date();
}
%>
<html>
<body>
 </br>
 </br>
<%= ahora() %>
</body>
</html>