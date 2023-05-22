<%-- 
    Document   : listarUsuario
    Created on : 21 de mai. de 2023, 12:03:12
    Author     : ADM
--%>
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
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Usuário</th>
                                <th scope="col">Nível</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Statement st = null;
                                ResultSet rs = null;
                                try {

                                    st = new Conexao().conectar().createStatement();

                                    rs = st.executeQuery("Select * from tbusuario");

                                    while (rs.next()) {
                                        out.println("<tr><td>" + rs.getString(1) + "</td>");
                                        switch (rs.getString(3)) {
                                            case "1":
                                                out.println("<td>admin</td></tr>");
                                                break;
                                            case "2":
                                                out.println("<td>intermediario</td></tr>");
                                                break;
                                            case "3":
                                                out.println("<td>limitado</td></tr>");
                                                break;

                                        }
                                    }
                                } catch (Exception e) {
                                    out.println(e);
                                }

                            %>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </body>
</html>
