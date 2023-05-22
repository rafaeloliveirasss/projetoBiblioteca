<%-- 
    Document   : menu
    Created on : 6 de mai. de 2023, 16:15:52
    Author     : ADM
--%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="principal.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Usuário

                </a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="cadUsuario.jsp">Cadastro do Usuario</a></li>
                    <li><a class="nav-link" href="buscaUsuario.jsp">Busca de Usuario</a></li>
                    <li><a class="nav-link" href="listarUsuario.jsp">Listagem de Usuario</a></li>

                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Autor

                </a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="cadAutor.jsp">Cadastro do Autor</a></li>
                    <li><a class="nav-link" href="buscarAutor.jsp">Busca de Autor</a></li>
                    <li><a class="nav-link" href="listarAutor.jsp">Listagem de Autor</a></li>

                </ul>
            </li>
            <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Gênero
            
          </a>
          <ul class="dropdown-menu">
            <li><a class="nav-link" href="cadGenero.jsp">Cadastro do Gênero</a></li>
            <li><a class="nav-link" href="buscarGenero.jsp">Busca por Gênero</a></li>
            <li><a class="nav-link" href="listarGenero.jsp">Listagem por Gênero</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Livro
            
          </a>
          <ul class="dropdown-menu">
            <li><a class="nav-link" href="cadLivro.jsp">Cadastro do Livro</a></li>
            <li><a class="nav-link" href="buscarLivro.jsp">Busca de Livro</a></li>
            <li><a class="nav-link" href="listarLivro.jsp">Listagem de Livro</a></li>
            
          </ul>
        </li>
            </li>
        </ul>
    </div>
</nav>