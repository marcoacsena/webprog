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
              
          <div id="form1">
            <form>

                <fieldset><legend>Paciente</legend>
                    <br>
                    Identificação: <input type="text" value="<%= request.getAttribute("idpaciente")%>"><br><br>
                    Nome: <input type="text" value="<%= request.getAttribute("nomepaciente")%>"><br><br>
                    Celular: <input type="text" size="10" value="<%= request.getAttribute("celularpaciente")%>"> Fone Residencial: <input type="text" size="10" value="<%= request.getAttribute("foneresidencial")%>"> Fone Comercial: <input type="text" size="10" value="<%= request.getAttribute("fonecomercial")%>"><br><br>
                    e-mail: <input type="email" size="80" value="<%= request.getAttribute("email")%>"><br><br>
                    CPF: <input type="text" value="<%= request.getAttribute("cpfpaciente")%>"> CNPJ: <input type="text" value="<%= request.getAttribute("cnpjpaciente")%>"><br><br>
                    
                </fieldset>

                <br><br>
                <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-2)">
                <br>
                </div>

                <div id="form2">
                    
                    <fieldset><legend>Endereço</legend>
                        <br>
                        Rua: <input type="text" size="80" value="<%= request.getAttribute("logradouro")%>"> Num: <input type="text" size="3" value="<%= request.getAttribute("numlogradouro")%>"><br><br>
                        Complemento: <input type="text" size="80" value="<%= request.getAttribute("complemento")%>"><br><br>
                        Bairro: <input type="text" value="<%= request.getAttribute("bairro")%>"> Cidade: <input type="text" value="<%= request.getAttribute("cidade")%>"> UF: <select style="width:150px;" value="<%= request.getAttribute("uf")%>"><option selected disabled>Selecione um estado</option>
                            <option>AC</option>
                            <option>AM</option>
                            <option>AP</option>
                        
                            
                        </select><br><br>
                        CEP: <input type="text" value="<%= request.getAttribute("cep")%>"> 
                            <br><br>
                    </fieldset>
                </div>
            </form> 
              
               <form action="PaginaInicial.jsp" method="POST">
                <input type="submit" value="Retornar para a Página Principal do SISTEMA AVICENA"><br><br>
            </form>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>
        
    </body>
</html>
