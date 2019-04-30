
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.vo.UsuarioVO;

public class UsuarioDAO {
    
    UsuarioVO usuarioVO;

    public int inserir(UsuarioVO usuarioVO) {
        int novoId = -1; 
                
		String query = "INSERT INTO usuario (login, senha)" + " VALUES (?,?)";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query, Statement.RETURN_GENERATED_KEYS);

		try {
			prepStmt.setString(1,  usuarioVO.getLogin());
                        prepStmt.setString(2,  usuarioVO.getSenha());
			
			prepStmt.executeUpdate();

			ResultSet generatedKeys = prepStmt.getGeneratedKeys();
			
			if (generatedKeys.next()) {
				novoId = generatedKeys.getInt(1);
			}
			
		}catch (SQLException e) {
			System.out.println("Erro ao executar Query de Cadastro de Produto! Causa: \n: " + e.getMessage());

		}finally {
			ConexaoComBanco.closePreparedStatement(prepStmt);
			ConexaoComBanco.closeConnection(conn);
		}
		return novoId;
        
    }    

    public Object validarUsuarioVO(String senha) {
        String query = "SELECT * FROM usuario" + " where senha = ?";
				
		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);
					

		try {
			prepStmt.setString(1, senha);
			ResultSet result = prepStmt.executeQuery();

			while (result.next()){
				usuarioVO = new UsuarioVO();
				
				usuarioVO.setCodigoUsuario(result.getInt("codigoUsuario"));
                                usuarioVO.setLogin(result.getString("login"));
                                usuarioVO.setSenha(result.getString("senha"));								
			}			

		} catch(SQLException e) {
			System.out.println("Erro ao executar a Query de Consulta de funcionarios!Causa: \n: " + e.getMessage());
		} finally {
			ConexaoComBanco.closeStatement(conn);
			ConexaoComBanco.closeConnection(conn);
		}
		return usuarioVO;
    }

       
    
}
