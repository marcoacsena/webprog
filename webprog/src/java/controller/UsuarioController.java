
package controller;

import model.bo.UsuarioBO;
import model.vo.UsuarioVO;


public class UsuarioController {

    UsuarioBO usuarioBO = new UsuarioBO();
    
//    public boolean validarUsuarioVO(String user, String password) {
//        
//        return usuarioBO.validarUsuarioVO(user, password);
//    }

    

    public int cadastrarUsuarioVO(UsuarioVO usuarioVO) {
        return usuarioBO.cadastrarUsuarioVO(usuarioVO);
    }
    
}
