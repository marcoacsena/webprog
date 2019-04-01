package Servlets;

import controller.PacienteController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.vo.PacienteVO;

public class PesquisarPacientePorCpf extends HttpServlet {

      PacienteVO pacienteVO = new PacienteVO();
      
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            pacienteVO.setCpfPaciente(request.getParameter("cpfpaciente"));            
                              
            PacienteController pacientecontroller = new PacienteController();
            pacienteVO = pacientecontroller.pesquisarPacienteVOPorCpf(pacienteVO.getCpfPaciente());
            
            if(pacienteVO != null){
            
                request.setAttribute("codigopaciente", pacienteVO.getCodigoPaciente());
                request.setAttribute("nomepaciente", pacienteVO.getNomePaciente());
                request.setAttribute("celmenpaciente", pacienteVO.getCelMensagemPaciente());
                request.setAttribute("cpfpaciente", pacienteVO.getCpfPaciente());
                
                request.getRequestDispatcher("PesquisarPacientePorCpf.jsp").forward(request, response);
                
            }else {System.out.println("Paciente não foi encontrado!");}
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
