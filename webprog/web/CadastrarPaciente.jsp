<%-- 
    Document   : CadastrarPaciente
    Created on : 11/03/2019, 13:34:38
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="CRUD.css">
        <title>Cadastrar Paciente</title>
    </head>
    <body>
        <hr>
        <h1>Cadastro de Paciente</h1>
        <h3>Por gentileza, preencher os dados do paciente a ser cadastrado:</h3> 

        <div id="form">
            <form method="post" action="cadastrarpaciente">

                <fieldset><legend>Dados do Paciente</legend>
                    <p><a>*</a>Campos de preenchimento obrigatório</p>
                    Nome<a>*</a>: <input type="text" name="nomepaciente" required><br><br>                    
                    CPF<a>*</a>: <input type="text" name="cpfpaciente" required><br><br>
                    Celular<a>*</a>: <input type="text" name="celularpaciente" required><br><br>
                    
                    <input type="reset" value="Limpar Campos">
                    <input type="submit" value = "Cadastrar Paciente">                

                </fieldset>
            </form>
            <br><br>
            <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-1)">
            <br>
        </div>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>    

    </body>
</html>
