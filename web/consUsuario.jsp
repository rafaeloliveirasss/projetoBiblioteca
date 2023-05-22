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
        <h1>Lista de Usu�rio</h1>
        
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCad">Lista de Usu�rio</button>
        
        <br><br>
        <%  
            Statement st = null;
            ResultSet rs = null;
            try{
     
            st = new Conexao().conectar().createStatement();
            
            rs = st.executeQuery("Select * from tbusuario where status=1");
            
            
            out.println("<table border=1><tr>");
            out.println("<td>usuario</td>");
            out.println("<td>senha</td>");
            out.println("<td>nivel</td></tr>");
            
            while(rs.next())
            {
            out.println("<tr><td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
            out.println("<td>" + rs.getString(3)+ "</td></tr>");  
        }
            out.println("</table>");
            }
            catch(Exception e)
            {
            out.println(e);
            }
                
            %>
            
            <!-- Modal -->
<div class="modal fade" id="modalCad" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Consulta Usu�rio</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="processaCadUsuario.jsp" method="post" id="cadastro">
                <div class="form-group">
                    <label>Usuario</label><br>
                    <input type="text" name="txtNome"><br>
                    <label>Senha</label><br>
                    <input type="text" name="txtSenha"><br>
                    <label>Nivel</label><br>
                    <input type="text" name="txtStatus"><br>
                    <br><br>
                    <input type="submit" name="btnSalvar" class="btn btn-primary">
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