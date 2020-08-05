<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PFDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>

<html lang="pt-br">

    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="content type">
        <title>Exibe Clientes</title>
    </head>

    <body>
    <%

        if (session.getAttribute("cadastrado") != null) {
            if ((boolean) session.getAttribute("cadastrado")) {
                out.println("Cliente cadastrado com sucesso");
            }
            session.removeAttribute("cadastrado");
        }

        List<PessoaFisica> clientes = null;

        try {
            clientes = PFDao.getClientes();
        }
        catch (SQLException e) {
            out.println("Falha na conexão com o banco");
        }
        if (clientes != null) {
            if (clientes.size() > 0) {
    %>

    <table>
        <tr>
            <th>CPF</th>
            <th>Nome</th>
            <th>Data de nascimento</th>
            <th>Endereço</th>
            <th>Telefone</th>
            <th>CEP</th>
        </tr>

        <% for (PessoaFisica cli : clientes) { %>
            <tr>
                <td><%= cli.getCpf() %></td>
                <td><%= cli.getNome() %></td>
                <td><%= cli.getDataNascimento() %></td>
                <td><%= cli.getEndereco() %></td>
                <td><%= cli.getTelefone() %></td>
                <td><%= cli.getCep() %></td>
            </tr>
        <% } %>
                        
    </table>
            
    <%
            } 
            else {
                out.println("Nenhum cliente para exibir");
            }
        }
    %>
    </body>

</html>