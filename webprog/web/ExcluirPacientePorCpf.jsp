<%-- 
    Document   : ExcluirPaciente
    Created on : 26/04/2019, 13:56:19
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="CRUD.css">
        <title>Excluir Paciente por CPF</title>
    </head>
    <body class="body">
        
        <div id="excluirCPF">
            <h3>Excluir Paciente por CPF!</h3>
            
            <form method="post" action="crud">

                <fieldset><legend>Digite o CPF do Paciente que deseja excluir da base de dados:</legend>
                    <p><a>*</a>Campos de preenchimento obrigatório</p>                    
                    <input type="hidden" id="excluir" name="excluir" value="excluir">
                    CPF<a>*</a>: 
                    <input type="text" name="cpfpaciente" required><br><br>
                    
                    <input type="submit" value = "Excluir Paciente">                

                </fieldset>                
            </form> <br><br>
            
            </form>
            
              O paciente com CPF <input type="text" value="<%= request.getAttribute("cpfpaciente")%>"> 
              foi Excluído!
            <br><br>
              
               <form action="PaginaInicial.jsp" method="POST">
                <input type="submit" value="Retornar para a Página Principal do SISTEMA AVICENA"><br><br>
            </form>
              
            
        </div>
        
    </body>
</html>
