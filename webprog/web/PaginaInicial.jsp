<%-- 
    Document   : PaginaInicial
    Created on : 08/03/2019, 10:56:51
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="PaginaInicial.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      
    <title>Sistema AVICENA</title>
    
    <style>
        /* Make the image fully responsive */  
      .carousel-inner{margin: 0 auto;       
      }
      .carousel-inner img {max-width: 100%;    
      }
      
      .container{float:top}
      .menu{float: bottom}
    </style>    
    
    <div class="container">    

        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Slide1.PNG" alt="Senac" width="1500" height="200">
                </div>
                <div class="carousel-item">
                    <img src="Slide2.PNG" alt="Disciplina" width="1500" height="200">
                </div>
                <div class="carousel-item">
                    <img src="Slide3.PNG" alt="Professor" width="1500" height="200">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>

    </div>
    
</head>

<body>
    
    <div class="menu">   

        <nav class="navbar navbar-expand-sm navbar-dark justify-content-center" style="background-color: cadetblue;">
            <a class="navbar-brand">
                <img src="icon2.png" alt="logo" style="width:60px; height: 40px;">
            </a>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Pacientes
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="PesquisarPacientePorCpf.jsp">Pesquisar Paciente Por CPF</a>
                            <a class="dropdown-item" href="CadastrarPaciente.jsp">Cadastrar Paciente</a>
                            <a class="dropdown-item" href="listarpacientes">Listar Todos os Pacientes</a>
                            <a class="dropdown-item" href="#">Atualizar Paciente</a> 
                            <a class="dropdown-item" href="#">Excluir Paciente</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Consultas
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Pesquisar Consulta</a>
                            <a class="dropdown-item" href="#">Cadastrar Consulta</a>
                            <a class="dropdown-item" href="#">Listar Todas as Consultas</a>
                            <a class="dropdown-item" href="#">Atualizar Consulta</a> 
                            <a class="dropdown-item" href="#">Excluir Consulta</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Médicos
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Pesquisar Medico</a>
                            <a class="dropdown-item" href="#">Cadastrar Medico</a>
                            <a class="dropdown-item" href="#">Listar Todos os Medicos</a>
                            <a class="dropdown-item" href="#">Atualizar Medico</a> 
                            <a class="dropdown-item" href="#">Excluir Medico</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Especialidades
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Pesquisar Especialidade</a>
                            <a class="dropdown-item" href="#">Cadastrar Especialidade</a>
                            <a class="dropdown-item" href="#">Listar Todas as Especialidades</a>
                            <a class="dropdown-item" href="#">Atualizar Especialidade</a> 
                            <a class="dropdown-item" href="#">Excluir Especialidade</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Sobre
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Responsáveis Técnicos</a>
                            <a class="dropdown-item" href="#">Informações do Sistema</a>
                            <a class="dropdown-item" href="#">Contatos</a>
                            <a class="dropdown-item" href="<% request.logout();%>">Sair</a>

                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    
    <div class="corpo">
        <br><br><br>
        <h1 class="titulo">Página Principal do Sistema AVICENA!</h1>
       
    </div>
    </div>        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>

 
</body>

</html>
