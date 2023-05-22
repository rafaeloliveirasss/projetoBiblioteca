
<%@ include file="referencias.jsp" %>

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
        <div class="container text-center">
            <div class="row align-items-start">
                <div class="col">
                    <form action="processaCadLivro.jsp" method="post" id="cadastro">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nome do Livro</label>
                            <input type="text" class="form-control" name="livro" id="exampleInputEmail1" aria-describedby="emailHelp" required>

                        </div><br> 
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nome do Autor</label>
                            <select name="txtAutor" class="form-select" aria-label="Default select example">
                                <%                                    
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        st = new Conexao().conectar().createStatement();
                                        rs = st.executeQuery("Select * from tbautor");

                                        while (rs.next()) {

                                            out.println("<option value=" + rs.getString(1) + "> " + rs.getString(2) + "</option>");

                                        }

                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                %>
                            </select>
                        </div><br> 
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nome do Genero</label>
                            <select name="txtGenero" class="form-select" aria-label="Default select example">
                                <%                                    try {
                                        st = new Conexao().conectar().createStatement();
                                        rs = st.executeQuery("Select * from tbgenero");

                                        while (rs.next()) {

                                            out.println("<option value=" + rs.getString(1) + "> " + rs.getString(2) + "</option>");

                                        }

                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                %>
                            </select>
                        </div><br>  
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Ano de Lançamento</label>
                            <input type="text" class="form-control" name="ano" id="exampleInputEmail1" aria-describedby="emailHelp" required>

                        </div><br> 
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Edição do Livro</label>
                            <input type="text" class="form-control" name="edicao" id="exampleInputEmail1" aria-describedby="emailHelp" required>

                        </div><br> 
                        <div class="form-floating">
                            <textarea name="txtDescricao" class="form-control" placeholder="Descrevs o livro aqui" id="floatingTextarea2" style="height: 100px"></textarea>
                            <label for="floatingTextarea2">Descrição do Livro</label>
                        </div><br> 



                        <button type="submit" name="btnSalvar" class="btn btn-primary">Cadastra Livro</button><br>
                    </form>


                </div>

            </div>
        </div>
    </body>
</html>
