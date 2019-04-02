<%-- 
    Document   : ConsultarPacientePorCpf
    Created on : 01/04/2019, 08:13:17
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="CRUD.css">
        <title>Pesquisa de Pacientes por CPF</title>
    </head>
    <body class="body">
               
        <div id="consultaCPF">
            <h3>Pesquisar Paciente por CPF!</h3>
            
            <form method="post" action="pesquisarpacienteporcpf">

                <fieldset><legend>Digite o CPF do Paciente a ser consultado na base de dados</legend>
                    <p><a>*</a>Campos de preenchimento obrigatório</p>                    
                    
                    CPF<a>*</a>: 
                    <input type="text" name="cpfpaciente" required><br><br>
                               
                    <input type="submit" value = "Pesquisar Paciente">                

                </fieldset>
            </form>
            <br><br>  
            
        </div>
        
        <div id="resultadoCPF">
            
            <h3>Resultado da pesquisa de Paciente por CPF:</h3>
            <form action="atualizarpaciente" method="post">

                <fieldset><legend>Dados do Paciente</legend>
                    
                    Identificação: <input type="text" value="<%= request.getAttribute("codigopaciente")%>"><br><br>
                    Nome: <input type="text" value="<%= request.getAttribute("nomepaciente")%>"><br><br>            
                    Celular: <input type="text" value="<%= request.getAttribute("celmenpaciente")%>"><br><br>
                    CPF: <input type="text" value="<%= request.getAttribute("cpfpaciente")%>"><br><br>
                    
                    <input type="submit" value="Atualizar Dados do Paciente">
                </fieldset>
            </form><br><br>
            
            <% 
                boolean resultadoDaAtualizacao = (boolean) request.getAttribute("atualizdo");
                
                if(resultadoDaAtualizacao){
                %>
                <input type="text" value="Dados atualizados"><br><br>
                <%                
                }else{%> 
                
                <input type="text" value="Dados atualizados"><br><br>
                <%}%>
                                                      
            <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-2)">
            <br>
            
        </div>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>
        
    </body>
</html>
