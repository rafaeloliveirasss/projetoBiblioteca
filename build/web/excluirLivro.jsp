<%@ include file="referencias.jsp" %>

<%
    Statement st = null;
    ResultSet rs = null;
    if (request.getParameter("funcao") != null && request.getParameter("funcao").equals("excluir")) {
        String valorID = request.getParameter("id");
        try {
            st = new Conexao().conectar().createStatement();
            st.executeUpdate("Update tblivro set statusLivro=0 where codLivro='" + valorID + "'");
            out.println("<meta http-equiv='refresh' content='0;URL=principal.jsp'>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Formação atualizado com sucesso');");
            out.println("</script>");
        } catch (Exception e) {
            out.println(e);
        }
    }%>