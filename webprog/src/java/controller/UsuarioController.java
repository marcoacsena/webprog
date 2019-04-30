
package controller;

import model.bo.UsuarioBO;
import model.vo.UsuarioVO;


public class UsuarioController {

    UsuarioBO usuarioBO = new UsuarioBO();

    public int cadastrarUsuarioVO(UsuarioVO usuarioVO) {
        return usuarioBO.cadastrarUsuarioVO(usuarioVO);
    }

    public UsuarioVO validarUusarioVO(UsuarioVO usuarioVO) {
        return usuarioBO.validarUsuarioVO(usuarioVO);
    }
    
}
