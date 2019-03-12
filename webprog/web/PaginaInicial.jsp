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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="PaginaInicial.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Sistema AVICENA</title>    
        
</head>

<body style="height:1500px">    
    
    <nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-center fixed-top">
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
                        <a class="dropdown-item" href="#">Consultar Paciente</a>
                        <a class="dropdown-item" href="CadastrarPaciente.jsp">Cadastrar Paciente</a>
                        <a class="dropdown-item" href="#">Listar Todos os Pacientes</a>
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
                        
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid" style="margin-top:80px">
        <h1>Página Principal do Sistema AVICENA!</h1>

    </div>

    <footer class="footer">                
        &copy; Desenvolvido por Luciane Benetti e Marco Sena.
    </footer>
</body>
</html>
