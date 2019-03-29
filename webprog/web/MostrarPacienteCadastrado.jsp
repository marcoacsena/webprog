<%-- 
    Document   : MostrarPacienteCadastrado
    Created on : 12/03/2019, 13:14:30
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="CRUD.css">
        <title>Cliente Cadastrado</title>
    </head>
    <body class="body">
        <br><br>
        <hr>
        <h1>O Paciente foi cadastrado com os seguintes dados:</h1>
        
        <div id="form">
            <form>

                <fieldset><legend>Dados do Paciente</legend>
                    
                    Identificação: <input type="text" value="<%= request.getAttribute("idpaciente")%>"><br><br>
                    Nome: <input type="text" value="<%= request.getAttribute("nomepaciente")%>"><br><br>                    
                    CPF: <input type="text" value="<%= request.getAttribute("cpfpaciente")%>"><br><br>
                    Celular: <input type="text" value="<%= request.getAttribute("celularpaciente")%>"><br><br>
                </fieldset>
            </form>
            <br><br>
            <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-2)">
            <br>
        </div>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>
        
    </body>
</html>
