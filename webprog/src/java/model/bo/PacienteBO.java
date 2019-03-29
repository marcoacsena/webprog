package model.bo;

/**
 *
 * @author 80119050
 */

import java.util.ArrayList;
import model.dao.PacienteDAO;
import model.vo.PacienteVO;

public class PacienteBO {
        
    PacienteDAO pacienteDAO = new PacienteDAO();
      
    public int cadastrarPacienteVO(PacienteVO pacienteVO) {
        
        int novoId;
        
        if(pacienteDAO.consultarPacientePorCpf(pacienteVO.getCpfPaciente()) != null){
            
            novoId = 0;       
        } else{ novoId = pacienteDAO.inserir(pacienteVO);}
        
        return novoId;
    }

    public ArrayList<PacienteVO> ListarTodosOsPacientesVO() {
        
        return pacienteDAO.listarTodosOsPacientesVO();
    }
    
}
