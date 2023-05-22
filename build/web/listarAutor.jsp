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
                                <th scope="col">Codigo do Autor</th>
                                <th scope="col">Nome do Autor</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Statement st = null;
                                ResultSet rs = null;
                                try {

                                    st = new Conexao().conectar().createStatement();

                                    rs = st.executeQuery("Select * from tbautor");

                                    while (rs.next()) {
                                        out.println("<tr><td>" + rs.getString(1) + "</td>");
                                        out.println("<td>" + rs.getString(2) + "</td></tr>");
                                        

                                        }
                                    }
                                 catch (Exception e) {
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
