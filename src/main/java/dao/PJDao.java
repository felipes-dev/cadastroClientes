package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.PessoaJuridica;
import util.ConexaoBanco;
import java.util.ArrayList;
import java.util.List;

public class PJDao {

    public static void cadastrar(PessoaJuridica cli) throws SQLException {
        
        Connection conexao = ConexaoBanco.getConexao();

        String query = "INSERT INTO PESSOA_JURIDICA VALUES (null,?,?,?,?,?,?)";

        PreparedStatement ps = conexao.prepareStatement(query);
        ps.setString(1, cli.getCnpj());
        ps.setString(2, cli.getNome());
        ps.setString(3, cli.getRazaoSocial());
        ps.setString(4, cli.getEndereco());
        ps.setString(5, cli.getTelefone());
        ps.setString(6, cli.getCep());

        ps.execute();
        ps.close();
        conexao.close();

    }

    public static List<PessoaJuridica> getClientes() throws SQLException {

        Connection conexao = ConexaoBanco.getConexao();

        String query = "SELECT * FROM PESSOA_JURIDICA";

        PreparedStatement ps = conexao.prepareStatement(query);

        ResultSet rs = ps.executeQuery();

        List<PessoaJuridica> clientes = new ArrayList<>();

        while (rs.next()) {
            clientes.add(new PessoaJuridica(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
            ));
        }

        ps.close();
        conexao.close();

        return clientes;
    }
}