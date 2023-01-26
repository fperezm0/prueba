<%-- 
    Document   : ejemplo
    Created on : Aug 9, 2022, 11:05:00 AM
    Author     : kike
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
            
		<!DOCTYPE html>
		<html>
		<body>

		<h1>base de datos en  jsp</h1>
		<table border="1">
		<tr>
		<td>id</td>
		<td>first name</td>
		<td>last name</td>
		<td>Email</td>

		</tr>
		<%
		try{ 
                PreparedStatement  statement; 
                 Class.forName("oracle.jdbc.driver.OracleDriver");
               DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");           
                            statement = con.prepareStatement("SELECT * FROM employees");
	         ResultSet resultSet = statement.executeQuery();
		 while(resultSet.next()){
		%>
		<tr>
                 <td><%=resultSet.getString(1) %></td>
                 <td><%=resultSet.getString(2) %></td>
		<td><%=resultSet.getString(3) %></td>
		<td><%=resultSet.getString(4) %></td>
		</tr>
                <h1>
		<%
		}
		
		} catch (Exception e) {
		out.print(e);
		}
		%>
                </h1>
		</table>
		</body>
		</html>		