<%-- 
    Document   : ListarTodosOsPacientes
    Created on : 29/03/2019, 14:03:09
    Author     : 80119050
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.vo.PacienteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todos os Pacientes da AVICENA</title>
    </head>
    <body>        
        <h1>Lista dos pacientes cadastrados na clínica AVICENA</h1><br><br>  
        
       <table>
           <tr>
               <th>Id</th>
               <th>Nome</th> 
               <th>Celular</th>
               <th>CPF</th>
           </tr>            
           
        <%         
            ArrayList<PacienteVO> pacientesVO = (ArrayList<PacienteVO>) request.getAttribute("pacientes");         
                        
                for (PacienteVO pacienteVO: pacientesVO)                       
                        {%>                                           
                    
                       <tr>
                        <td><%= pacienteVO.getCodigoPaciente()%></td>
                        <td><%= pacienteVO.getNomePaciente()%></td>
                        <td><%= pacienteVO.getCelMensagemPaciente()%></td>
                        <td><%= pacienteVO.getCpfPaciente()%></td>
                       </tr>                   
           
                    <%
                      }
                    %>
                   </table> 
                   
                   <br>
                   <input type="button" value = "Retornar para a Página Principal do sistema AVICENA" onclick="history.go(-1)">
             
<footer class="footer">                
        &copy; Desenvolvido por Luciane Benetti e Marco Sena.
</footer>
        
    </body>
</html>
