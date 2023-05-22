<%@ include file="referencias.jsp" %>
<%
            Statement st = null;
            ResultSet rs = null;
            if(request.getParameter("btnAtualizar")!=null){
                String id = request.getParameter("txtCod");         
               try{
                        st = new Conexao().conectar().createStatement();
                        st.executeUpdate("Update tbusuario set status=0 where codUsuario='"+id+"'");     
                        out.println("<meta http-equiv='refresh' content='0;URL=excluirUsuario.jsp'>");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Usuário excluído com sucesso');");
                        out.println("</script>");    
                        }
                catch(Exception e)
                        {
                        out.println(e);
                        }
  
            }
            %>