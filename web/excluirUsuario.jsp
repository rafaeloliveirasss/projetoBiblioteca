<%@ include file="referencias.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="estilos.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="testaSessao.jsp" %>
        <%@ include file="menu.jsp" %>
        <br>
        
        <%  
            Statement st = null;
            ResultSet rs = null;
            String id = null;
            try{
     
            st = new Conexao().conectar().createStatement();
            
            rs = st.executeQuery("Select * from tbusuario where status=1");
            
            
            
            out.println("<table border=1><tr>");
            
            while(rs.next())
            {
            
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
            out.println("<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modalExcluir'> Excluir Usuario</button></td></tr>");
            id = rs.getString(1); 
            }
            out.println("</table>");
            }
            catch(Exception e)
            {
            out.println(e);
            }
              
            %>
            
            
            
             <!-- Modal -->
<div class="modal fade" id="modalExcluir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Exclusão</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="processaExclusaoUsuario.jsp" method="post" id="cadastro">
            Deseja Excluir o Usuário?<br><br>
            <input type="hidden" id="txtCod" name="txtCod" value="<%=id %>">
                <input type="submit" name="btnAtualizar" class="btn btn-primary" value="Sim">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
                </div>
            </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
            
            
            
    </body>
</html>