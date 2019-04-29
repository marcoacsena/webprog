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
                
		String query = "INSERT INTO paciente (nomePaciente, celMensagemPaciente, "
                        + "foneResidencial, foneComercial, emailPaciente, cpfPaciente, "
                        + "cnpjPaciente, logradouro, numeroLogradouro, complemento, bairro, "
                        + "cidade, uf, cep)" 
                        + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query, Statement.RETURN_GENERATED_KEYS);

		try {
			prepStmt.setString(1,  pacienteVO.getNomePaciente());
                        prepStmt.setString(2,  pacienteVO.getCelMensagemPaciente());
			prepStmt.setString(3,  pacienteVO.getFoneResidencial());
                        prepStmt.setString(4,  pacienteVO.getFoneComercial());
                        prepStmt.setString(5,  pacienteVO.getEmailPaciente());
			prepStmt.setString(6,  pacienteVO.getCpfPaciente());
                        prepStmt.setString(7,  pacienteVO.getCnpjPaciente());
                        prepStmt.setString(8,  pacienteVO.getLogradouro());
			prepStmt.setString(9,  pacienteVO.getNumLogradouro());
                        prepStmt.setString(10,  pacienteVO.getComplemento());
                        prepStmt.setString(11,  pacienteVO.getBairro());
			prepStmt.setString(12,  pacienteVO.getCidade());
                        prepStmt.setString(13,  pacienteVO.getUf());
                        prepStmt.setString(14,  pacienteVO.getCep());
			
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

	public boolean Excluir(String cpfPaciente) {
		
		boolean sucessoNaExclusao = false;
                
                String query = "DELETE from paciente where cpfPaciente = ? ";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);

		try {
			prepStmt.setString(1, cpfPaciente);
			int codigoRetorno = prepStmt.executeUpdate();
			if (codigoRetorno == 1) {
				sucessoNaExclusao = true;
			}
		} catch (SQLException e) {
			System.out.println("Erro ao executar Query de Exclus�o do Paciente! Causa: \n: " + e.getMessage());
		} finally {
			ConexaoComBanco.closePreparedStatement(prepStmt);
			ConexaoComBanco.closeConnection(conn);
		}
		return sucessoNaExclusao;		
	}
        
public boolean atualizarPacienteVO(PacienteVO pacienteVO) {

    boolean atualizacao = false;

    String query = "UPDATE paciente SET nomePaciente = ? WHERE cpfPaciente = ?";

        Connection conn = ConexaoComBanco.getConnection();
        PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);

        try {
            prepStmt.setString(2, pacienteVO.getCpfPaciente());
            prepStmt.setString(1, pacienteVO.getNomePaciente());
            

            int codigoRetorno = prepStmt.executeUpdate();

            if (codigoRetorno == 1) {
                atualizacao = true;
            }

        } catch (SQLException e) {
            System.out.println("Erro ao executar Query de Atualização do Paciente! Causa: \n: " + e.getMessage());
        } finally {
            ConexaoComBanco.closePreparedStatement(prepStmt);
            ConexaoComBanco.closeConnection(conn);
        }

        return atualizacao;

    }

	public ArrayList<PacienteVO> listarTodosOsPacientesVO() {

		String query = "select * from paciente";

		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);
		
		ArrayList<PacienteVO> paciente = new ArrayList<PacienteVO>();
		
		try {
			ResultSet resultado = prepStmt.executeQuery(query);

			while (resultado.next()) {
				
                            PacienteVO pacienteVO = new PacienteVO();
                            pacienteVO.setCodigoPaciente(resultado.getInt(1));
			    pacienteVO.setNomePaciente(resultado.getString("nomePaciente"));				
			    pacienteVO.setCelMensagemPaciente(resultado.getString("celMensagemPaciente"));
                            pacienteVO.setFoneResidencial(resultado.getString("foneResidencial"));
                            pacienteVO.setFoneComercial(resultado.getString("foneComercial"));
                            pacienteVO.setEmailPaciente(resultado.getString("emailPaciente"));
                            pacienteVO.setCpfPaciente(resultado.getString("cpfPaciente"));
                            pacienteVO.setCnpjPaciente(resultado.getString("cnpjPaciente"));
                            pacienteVO.setLogradouro(resultado.getString("logradouro"));
                            pacienteVO.setNumLogradouro(resultado.getString("numeroLogradouro"));
                            pacienteVO.setComplemento(resultado.getString("complemento"));
                            pacienteVO.setBairro(resultado.getString("bairro"));
                            pacienteVO.setCidade(resultado.getString("cidade"));
                            pacienteVO.setUf(resultado.getString("uf"));
                            pacienteVO.setCep(resultado.getString("cep"));
				

				paciente.add(pacienteVO);
			}				
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return paciente;
	}

	public PacienteVO pesquisarPacienteVOPorCpf(String cpfPaciente) {
				
		String query = "SELECT * FROM paciente" + " WHERE cpfPaciente = ?";
		PacienteVO pacienteVO = null;
		
		Connection conn = ConexaoComBanco.getConnection();
		PreparedStatement prepStmt = ConexaoComBanco.getPreparedStatement(conn, query);
					

		try {
			prepStmt.setString(1, cpfPaciente);
			ResultSet result = prepStmt.executeQuery();

			while (result.next()){
				pacienteVO = new PacienteVO();
				
				pacienteVO.setCodigoPaciente(result.getInt("codigoPaciente"));
				pacienteVO.setNomePaciente(result.getString("nomePaciente"));	
				pacienteVO.setCelMensagemPaciente(result.getString("celMensagemPaciente"));
                                pacienteVO.setCpfPaciente(result.getString("cpfPaciente"));
				
			}			

		} catch(SQLException e) {
			System.out.println("Erro ao executar a Query de Consulta de funcionarios!Causa: \n: " + e.getMessage());
		} finally {
			ConexaoComBanco.closeStatement(conn);
			ConexaoComBanco.closeConnection(conn);
		}
		return pacienteVO;
	}

    
}
