<%-- 
    Document   : login
    Created on : Oct 29, 2015, 4:35:42 PM
    Author     : Paulo Guazzi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" %>


<jsp:useBean class="com.mycompany.projeto2.loginBean" id="info" scope="session"/>
<jsp:useBean id="date" class="java.util.Date"/>
<jsp:setProperty name="info" property="*" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <title>Login</title>
   </head>
   <body>
      <form method="post">
         Codigo: <input type="text" name="login" value='${info.login}'/><br/>
         Nome: <input type="password" name="senha" value='${info.senha}'/><br/>
         Perfil: <select name="perfil">
                     <option value="1"value='${info.perfil}'>Cliente</option>
                     <option value="2" value='${info.perfil}'>Gerente</option>
                     <option value="3" value='${info.perfil}'>Administrador</option>
                 <select>
         <input type="submit" value="Enviar"/>
         
         </form>
   </body>
</html>
<%
    if (request.getMethod().equals("POST")) {
       String a = info.getLogin();
       String b = info.getSenha();
       int c = info.getPerfil();
       String d;
        if(c == 1){
            d = "Cliente";
        }
        else if(c == 2){
            d = "Gerente";
        }
        else{
            d = "Administrador";
        }
       Date t = new Date(System.currentTimeMillis());
      
        if(a.equals(b)){
             out.println("<div><h2 style='color: blue'>"+ d + ", login bem sucedido, para " + a + " às " + t.toString() + "</h2></div>");
        }
        else
            out.println("<div style='color: red'><i>Acesso negado</i></div>");
    } 
%>