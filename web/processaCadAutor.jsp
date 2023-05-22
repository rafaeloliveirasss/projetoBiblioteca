<%@ include file="referencias.jsp" %>
<%
             Statement st = null;
             ResultSet rs = null;
            if(request.getParameter("btnSalvar")!=null){
                
                String nome = request.getParameter("txtNome");
                
                 
               try{
                        st = new Conexao().conectar().createStatement();
                        st.executeUpdate("insert into tbautor(nomeAutor) values('"+nome+"')");    
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