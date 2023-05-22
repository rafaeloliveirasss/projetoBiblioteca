<%-- 
    Document   : processaCadUsuario
    Created on : 6 de mai. de 2023, 15:29:05
    Author     : ADM
--%>

<%@ include file="referencias.jsp" %>
<%
             Statement st = null;
             ResultSet rs = null;
            if(request.getParameter("btnSalvar")!=null){
                String usuario = request.getParameter("txtNome");
                String senha = request.getParameter("txtSenha");   
                String status = request.getParameter("txtStatus"); 
               try{
                        st = new Conexao().conectar().createStatement();
                        st.executeUpdate("insert into tbusuario(usuario, senha, nivel) values('"+usuario+"','"+senha+"','"+status+"')");    
                        out.println("<meta http-equiv='refresh' content='0;URL=principal.jsp'>");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Cadastro realizado com sucesso');");
                        out.println("</script>");    
                        }
                catch(Exception e)
                        {
                        out.println(e);
                        }
            }
            %>