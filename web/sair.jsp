<%-- 
    Document   : sair
    Created on : 6 de mai. de 2023, 16:42:40
    Author     : ADM
--%>

<%
    session.invalidate();
    response.sendRedirect("index.jsp");
  %>