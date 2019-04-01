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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pesquisar Paciente por CPF!</h1>
        
        <div id="consultaCPF">
            <form method="post" action="pesquisarpacienteporcpf">

                <fieldset><legend>Digite o CPF do Paciente a ser consultado na base de dados</legend>
                    <p><a>*</a>Campos de preenchimento obrigatório</p>                    
                    
                    CPF<a>*</a>: 
                    <input type="text" name="cpfpaciente" required><br><br>
                                        
                    <input type="reset" value="Limpar Campos">
                    <input type="submit" value = "Pesquisar Paciente">                

                </fieldset>
            </form>
            <br><br>  <hr><hr>
            
        </div>
        
        <div id="resultadoCPF">
            
            <h1>Resultado da pesquisa de Paciente por CPF:</h1>
            <form>

                <fieldset><legend>Dados do Paciente</legend>
                    
                    Identificação: <input type="text" value="<%= request.getAttribute("codigopaciente")%>"><br><br>
                    Nome: <input type="text" value="<%= request.getAttribute("nomepaciente")%>"><br><br>            
                    Celular: <input type="text" value="<%= request.getAttribute("celmenpaciente")%>"><br><br>
                    CPF: <input type="text" value="<%= request.getAttribute("cpfpaciente")%>"><br><br>
                </fieldset>
            </form>
                                            
            <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-1)">
            <br>
            
        </div>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>
        
    </body>
</html>
