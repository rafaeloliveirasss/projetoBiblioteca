<%-- 
    Document   : principal
    Created on : 6 de mai. de 2023, 15:19:32
    Author     : ADM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="estilos.jsp" %>
    </head>
    
    
    <body>
        <%@ include file="menu.jsp" %>
        
        <%@ include file="testaSessao.jsp" %>
        <h1>Seja Bem Vindo!</h1>
        <br>
        <h1>Olá! Login efetuado com Sucesso!</h1>
        Bem-vindo <%=usu %><br>
        Seu Nivel de acesso <%=nivel %><br>
        
          <br><a href="sair.jsp"><button type="button" class="btn btn-primary">Sair</button></a>
          
    </body>
</html>
