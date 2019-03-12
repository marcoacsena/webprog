
package controller;

/**
 *
 * @author 80119050
 */

import model.bo.PacienteBO;
import model.vo.PacienteVO;

public class PacienteController {
    
    PacienteBO pacienteBO = new PacienteBO();
      
    public int cadastrarPacienteVO(PacienteVO pacienteVO) {
                
        return pacienteBO.cadastrarPacienteVO(pacienteVO);
    }
    
}
