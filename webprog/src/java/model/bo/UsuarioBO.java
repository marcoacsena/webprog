
package model.bo;

import model.dao.UsuarioDAO;
import model.vo.UsuarioVO;


public class UsuarioBO {
    
     UsuarioDAO usuarioDAO = new UsuarioDAO();
    
    public int cadastrarUsuarioVO(UsuarioVO usuarioVO) {
        int novoId;
        
        if(usuarioDAO.validarUsuarioVO(usuarioVO.getSenha()) != null){
            
            novoId = 0;       
        } else{ novoId = usuarioDAO.inserir(usuarioVO);}
        
        return novoId;
    }

    public UsuarioVO validarUsuarioVO(UsuarioVO usuarioVO) {
        
        return usuarioDAO.validarUsuarioVO (usuarioVO);
    }
    
}
