<%-- 
    Document   : testaSessao
    Created on : 6 de mai. de 2023, 15:51:42
    Author     : ADM
--%>

<% 
           String usu = (String) session.getAttribute("usuario");
           String senha = (String) session.getAttribute("senha");
           String nivel = (String) session.getAttribute("nivel");
           if(usu==null)
           {
            response.sendRedirect("index.jsp");
        }
        %>