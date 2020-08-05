package model;

public class PessoaJuridica extends Cliente{

    private String cnpj;
    private String razaoSocial;

    public PessoaJuridica() {
        
    }

    public PessoaJuridica(int id, String cnpj, String nome, String razaoSocial, String endereco, String telefone, String cep) {
        super(id, nome, endereco, telefone, cep);
        this.cnpj = cnpj;
        this.razaoSocial = razaoSocial;
    }
    
    public String getCnpj() {
        return this.cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaoSocial() {
        return this.razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    
}