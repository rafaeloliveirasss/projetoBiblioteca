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
                    <form>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Busca Livro</label>
                            <input type="text" class="form-control" name="buscar" id="exampleInputEmail1" aria-describedby="emailHelp" required>

                        </div>


                        <input type="submit" name="btnBuscar" class="btn btn-primary"><br>
                    </form>

                    <%                        Statement st = null;
                        ResultSet rs = null;

                        if (request.getParameter("btnBuscar") != null) {

                            String busca = request.getParameter("buscar");

                            try {
                                st = new Conexao().conectar().createStatement();
                                rs = st.executeQuery("Select * from tblivro where  nomeLivro like '%" + busca + "%'");

                                out.println("<table class='table'>");
                                out.println("<thead>");
                                out.println("<tr>");
                                out.println("<th scope = 'col' >Código do Livro</th>");
                                out.println(" <th scope = 'col' >Nome do Livro</th>");
                                out.println(" </tr>");
                                out.println(" </thead>");
                                out.println(" <tbody>");

                                while (rs.next()) {

                                    out.println("<tr><td>" + rs.getString(1) + "</td>");
                                    out.println("<td><a href='./descricaoLivro.jsp?funcao=visualizar&id=" + rs.getString(1) + "'>" + rs.getString(2) + "</a></td></tr>");
                                }
                                out.println("</tbody></table>");

                            } catch (Exception e) {
                                out.println(e);
                            }
                        }
                    %>
                </div>

            </div>
        </div>
    </body>
</html>
