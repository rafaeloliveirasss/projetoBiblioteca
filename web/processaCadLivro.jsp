<%@ include file="referencias.jsp" %>
<%
    Statement st = null;
    ResultSet rs = null;
    if (request.getParameter("btnSalvar") != null) {

        String livro = request.getParameter("livro");
        String autor = request.getParameter("txtAutor");
        String genero = request.getParameter("txtGenero");
        String ano = request.getParameter("ano");
        String edicao = request.getParameter("edicao");
        String descricao = request.getParameter("txtDescricao");

        try {
            st = new Conexao().conectar().createStatement();
            st.executeUpdate("insert into tblivro(nomeLivro,codAutor,codGenero,anoLancamento,edicaoLivro,descricaoLivro,statusLivro) values('" +livro + "','" +autor+ "','" +genero+ "','" +ano+ "','" +edicao+ "','" +descricao+ "',1)");
            out.println("<meta http-equiv='refresh' content='0;URL=principal.jsp'>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Cadastro realizado com sucesso');");
            out.println("</script>");
        } catch (Exception e) {
            out.println(e);
        }
    }
%>