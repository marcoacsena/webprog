
package controller;

/**
 *
 * @author 80119050
 */

import java.util.ArrayList;
import model.bo.PacienteBO;
import model.vo.PacienteVO;

public class PacienteController {
    
    PacienteBO pacienteBO = new PacienteBO();
      
    public int cadastrarPacienteVO(PacienteVO pacienteVO) {
                
        return pacienteBO.cadastrarPacienteVO(pacienteVO);
    }

    public ArrayList<PacienteVO> listarTodosOsPacientesVO() {
        
        return pacienteBO.ListarTodosOsPacientesVO();
        
    }
    
}
