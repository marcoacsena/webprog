package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.vo.PacienteVO;

public class PacienteDAO {
    
    public int inserir(PacienteVO pacienteVO) {
		int novoId = -1; 
		
		String query = "INSERT INTO pacientes (nome, celular, cpf)" + " VALUES (?,?,?,?)";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query, Statement.RETURN_GENERATED_KEYS);

		try {
			prepStmt.setString(1,  pacienteVO.getNome());			
			prepStmt.setString(3,  pacienteVO.getCelular());
                        prepStmt.setString(2,  pacienteVO.getCpf());
			

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

	public boolean delete(int idPaciente) {
		
		boolean sucesso = false;

		String query = "DELETE FROM funcionario WHERE idfuncionario = ? ";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);

		try {
			prepStmt.setInt(1,  idPaciente);

			int codigoRetorno = prepStmt.executeUpdate();

			if(codigoRetorno == 1){
				sucesso = true;				
			}

			
		}catch (SQLException e) {
			System.out.println("Erro ao executar Query de Exclusão do Funcionario! Causa: \n: " + e.getMessage());
		}finally {
			ConexaoComBanco.closePreparedStatement(prepStmt);
			ConexaoComBanco.closeConnection(conn);
		}
		return sucesso;
	}

	public boolean atualizar(PacienteVO pacienteVO) {

		boolean sucesso = false;

		String query = "UPDATE funcionario SET nome=?, cpf=?, telefone=?, email=? " + "WHERE idfuncionario = ?";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);

		try {
			
						
			prepStmt.setString(1,  pacienteVO.getNome());
			prepStmt.setString(2,  pacienteVO.getCpf());
			prepStmt.setString(3,  pacienteVO.getCelular());
			
                        
			int codigoRetorno = prepStmt.executeUpdate();
			

			if(codigoRetorno == 1){
				sucesso = true;
			}
			

		}catch (SQLException e) {
			System.out.println("Erro ao executar Query de Atualização do Funcionário! Causa: \n: " + e.getMessage());
		}finally {
			ConexaoComBanco.closePreparedStatement(prepStmt);
			ConexaoComBanco.closeConnection(conn);
		}
		
		return sucesso;

	}

	public ArrayList<PacienteVO> listarTodosOsPacientes() {

		String query = "select * from funcionario";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);
		
		ArrayList<PacienteVO> pacientesVO = new ArrayList<PacienteVO>();
		
		try {
			ResultSet resultado = prepStmt.executeQuery(query);

			while (resultado.next()) {
				
				PacienteVO pacienteVO = new PacienteVO();
				pacienteVO.setId(resultado.getInt(1));
				pacienteVO.setNome(resultado.getString("nome"));				
				pacienteVO.setCelular(resultado.getString("celular"));
                                pacienteVO.setCpf(resultado.getString("cpf"));
				

				pacientesVO.add(pacienteVO);
			}				
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return pacientesVO;
	}

	public PacienteVO consultarFuncionarioPorId(int idPaciente) {
				
		String query = "SELECT * FROM funcionario" + " WHERE idfuncionario = ?";
		PacienteVO paciente = null;
		
		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);
					

		try {
			prepStmt.setInt(1, idPaciente);
			ResultSet result = prepStmt.executeQuery();

			while (result.next()){
				paciente = new PacienteVO();
				
				paciente.setId(result.getInt("idFuncionario"));
				paciente.setNome(result.getString("nome"));				
				paciente.setCelular(result.getString("celular"));
				paciente.setCpf(result.getString("cpf"));
				
				
			}			

		} catch(SQLException e) {
			System.out.println("Erro ao executar a Query de Consulta de funcionarios!Causa: \n: " + e.getMessage());
		} finally {
			ConexaoComBanco.closeStatement(conn);
			ConexaoComBanco.closeConnection(conn);
		}
		return paciente;
	}

    
}
