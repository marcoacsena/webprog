<%-- 
    Document   : Index
    Created on : 30/04/2019, 07:53:44
    Author     : 80119050
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="PaginaInicial.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      
    <title>Sistema AVICENA - Página Inicial</title>
    
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
                    <img src="Slide1.JPG" alt="Senac" width="1500" height="200">
                </div>
                <div class="carousel-item">
                    <img src="Slide2.JPG" alt="Disciplina" width="1500" height="200">
                </div>
                <div class="carousel-item">
                    <img src="Slide3.JPG" alt="Professor" width="1500" height="200">
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
