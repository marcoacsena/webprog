<%-- 
    Document   : CadastrarUsuario
    Created on : 30/04/2019, 09:40:45
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
        <div class="principal">
       <div class="secao3">

       </div>

         <div class="logincadastro">
           <fieldset><legend><a>Login de Usuários</a></legend><br><br>

              <form action="validarusuario" method="post">
                  Nome  : <input type="text" name="nome" required=""> <br><br>
                  Senha : <input type="password" name="senha" required=""> <br><br>
                  <input type="submit" name="login" value="OK"/>

              </form><br> 

                <form action="CadastrarUsuario.jsp" method="post">
                       Não sou cadastrado <input type="submit" value = "Clique aqui!">
                </form> 
           </fieldset>
         </div>
        </form>

        <div class="secao4">

        </div>
    
<footer class="footer">                
            &copy; Desenvolvido por Luciane Benetti e Marco Sena.
</footer>
        
</body>
</html>
