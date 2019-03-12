
public class Paciente {
    
    private int id;
    private String nome;
    private String celular;
    private String cpf;

    public Paciente() {
    }

    public Paciente(String nome, String celular, String cpf) {
        this.nome = nome;
        this.celular = celular;
        this.cpf = cpf;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "Paciente[" + "id:" + id + ", nome:" + nome + ", celular:" + celular + ", cpf:" + cpf + ']';
    }    
    
}
