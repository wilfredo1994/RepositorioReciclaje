<%-- 
    Document   : list
    Created on : 04/11/2023, 04:16:46 PM
    Author     : PC
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.uap.fp.model.Usuario"%>
<%@page import="com.uap.fp.modeldao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv=" Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido al listar Usuario</h1>
        <div>
            <h1>Usuarios</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                </thead>
                <%
                    UsuarioDAO dao=new UsuarioDAO();
                    List<Usuario> list=dao.listar();
                    Iterator<Usuario> iter=list.iterator();
                    Usuario usr=null;
                    while(iter.hasNext()){
                        usr=iter.next();                    
                %>
                <tbody>
                    <tr>
                        <td><%= usr.getId() %></td>
                        <td><%= usr.getNombres() %></td>
                        <td><%= usr.getApellidos() %></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
