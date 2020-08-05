package model;

public class PessoaFisica extends Cliente{

    private String cpf;
    private String dataNascimento;

    public PessoaFisica() {
        
    }

    public PessoaFisica(int id, String cpf, String nome, String dataNascimento, String endereco, String telefone, String cep) {
        super(id, nome, endereco, telefone, cep);
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
    }

    public String getCpf() {
        return this.cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNascimento() {
        return this.dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    
}