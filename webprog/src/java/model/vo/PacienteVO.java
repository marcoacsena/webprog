
package model.vo;

/**
 *
 * @author 80119050
 */
public class PacienteVO {
    
    private int codigoPaciente;
    private String nomePaciente;
    private String celMensagemPaciente;
    private String cpfPaciente;

    public PacienteVO() {
    }

    public PacienteVO(String nomePaciente, String celMensagemPaciente, String cpfPaciente) {
        this.nomePaciente = nomePaciente;
        this.celMensagemPaciente = celMensagemPaciente;
        this.cpfPaciente = cpfPaciente;
    }

    public int getCodigoPaciente() {
        return codigoPaciente;
    }

    public void setCodigoPaciente(int codigoPaciente) {
        this.codigoPaciente = codigoPaciente;
    }

    public String getNomePaciente() {
        return nomePaciente;
    }

    public void setNomePaciente(String nomePaciente) {
        this.nomePaciente = nomePaciente;
    }

    public String getCelMensagemPaciente() {
        return celMensagemPaciente;
    }

    public void setCelMensagemPaciente(String celMensagemPaciente) {
        this.celMensagemPaciente = celMensagemPaciente;
    }

    public String getCpfPaciente() {
        return cpfPaciente;
    }

    public void setCpfPaciente(String cpfPaciente) {
        this.cpfPaciente = cpfPaciente;
    }

    @Override
    public String toString() {
        return "PacienteVO{" + "codigoPaciente=" + codigoPaciente + ", nomePaciente=" + nomePaciente + ", celMensagemPaciente=" + celMensagemPaciente + ", cpfPaciente=" + cpfPaciente + '}';
    }

    
    
}
