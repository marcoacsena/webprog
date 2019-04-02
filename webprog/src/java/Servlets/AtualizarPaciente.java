package Servlets;

import controller.PacienteController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.vo.PacienteVO;

public class AtualizarPaciente extends HttpServlet {

PacienteVO pacienteVO = new PacienteVO();
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
        
        //pacienteVO.setCodigoPaciente(Integer.parseInt(request.getParameter("codigopaciente")));
        pacienteVO.setNomePaciente(request.getParameter("nomepaciente"));
        pacienteVO.setCelMensagemPaciente(request.getParameter("celmenpaciente"));
        pacienteVO.setCpfPaciente(request.getParameter("cpfpaciente")); 
                              
            PacienteController pacientecontroller = new PacienteController();
            boolean atualizado = pacientecontroller.atualizarPacienteVO(pacienteVO);
            
            if(atualizado){
                            
                request.setAttribute("atualizacao", atualizado);
             
                request.getRequestDispatcher("PesquisarPacientePorCpf.jsp").forward(request, response);
                
            }else {System.out.println("Paciente não foi encontrado!");}
    }

  
}
