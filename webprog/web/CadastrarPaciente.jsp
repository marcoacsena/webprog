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
    <body class="body">
        <hr>
        <h1>Cadastro de Paciente</h1>
        <h3>Por gentileza, preencher os dados do paciente a ser cadastrado:</h3> 

        <div id="form1">
            <form method="post" action="cadastrarpaciente">

                <fieldset><legend>Paciente</legend>
                    <a>*</a>Campos de preenchimento obrigatório <br><br>
                    Nome<a>*</a>: <input type="text" name="nomepaciente" required size="80"><br><br>
                    Celular<a>*</a>: <input type="text" name="celularpaciente" required size="10"> Fone Residencial: <input type="text" name="foneresidencial" size="10"> Fone Comercial: <input type="text" name="fonecomercial" size="10"><br><br>
                    e-mail: <input type="email" name="email" size="80"><br><br>
                    CPF<a>*</a>: <input type="text" name="cpfpaciente" required> CNPJ: <input type="text" name="cnpjpaciente"><br><br>
                    
                </fieldset>

                <br><br>
                <input type="button" value = "Retornar para a Página Principal do SISTEMA AVICENA" onclick="history.go(-1)">
                <br>
                </div>

                <div id="form2">
                    
                    <fieldset><legend>Endereço</legend>
                        <br>
                        Rua<a>*</a>: <input type="text" name="logradouro" required size="80"> Num: <input type="text" name="numlogradouro" required size="3"><br><br>
                        Complemento: <input type="text" name="complemento" size="80"><br><br>
                        Bairro<a>*</a>: <input type="text" name="bairro" required> Cidade<a>*</a>: <input type="text" name="cidade" required> UF: <select style="width:150px;" name="uf" required><option selected disabled>Selecione um estado</option>
                            <option>AC</option>
                            <option>AM</option>
                            <option>AP</option>
                        
                            
                        </select><br><br>
                        CEP: <input type="text" name="cep"> 
                            <br><br>                        
                        
                        <input type="reset" value="Limpar Campos">
                        <input type="submit" value = "Cadastrar Paciente">                


                    </fieldset>
                </div>
            </form>

        <footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
        </footer>    

    </body>
</html>
