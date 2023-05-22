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
                    <%                        
                        Statement st = null;
                        ResultSet rs = null;
                        String valorID = request.getParameter("id");
                        String livro = null;
                        String autor = null;
                        String genero = null;
                        String ano = null;
                        String edicao = null;
                        String descricao = null;
                        if (request.getParameter("funcao") != null && request.getParameter("funcao").equals("visualizar")) {
                            st = new Conexao().conectar().createStatement();
                            try {
                                rs = st.executeQuery("Select nomeLivro,nomeAutor,genero,anoLancamento,edicaoLivro, descricaoLivro from tblivro l inner join tbautor a on l.codAutor=a.codAutor inner join tbgenero g on l.codGenero=g.codGenero where codLivro ='" + valorID + "'");
                                while (rs.next()) {
                                    livro = rs.getString(1);
                                    autor = rs.getString(2);
                                    genero = rs.getString(3);
                                    ano = rs.getString(4);
                                    edicao = rs.getString(5);
                                    descricao = rs.getString(6);

                                }
                            } catch (Exception e) {
                                out.println(e);
                            }
                        }
                    %>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><b>Nome do Livro: </b><%=livro%></h5>
                            <h6 class="card-subtitle mb-2 text-body-secondary"><b>Nome do Autor: </b><%=autor%></h6>
                            <p class="card-text">
                                <b>Genero do Livro: </b><%=genero%><br>
                                <b>Ano do Livro: </b><%=ano%><br>
                                <b>Edição do Livro: </b><%=edicao%><br>
                                <b>Descricao do Livro: </b><%=descricao%><br>

                            </p>
                            <a href="excluirLivro.jsp?funcao=excluir&id=<%=valorID%>" class="card-link">Excluir Livro</a>

                        </div>
                    </div>
                </div>

            </div>

        </div>
    </body>
</html>