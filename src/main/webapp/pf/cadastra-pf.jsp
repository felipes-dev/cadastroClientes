<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PFDao" %>
<%@ page import="java.sql.SQLException" %>

    <%
        request.setCharacterEncoding("UTF-8");
        PessoaFisica cli = new PessoaFisica();
        
        cli.setCpf(request.getParameter("cpf"));
        cli.setNome(request.getParameter("nome"));
        cli.setDataNascimento(request.getParameter("data-nascimento"));
        cli.setEndereco(request.getParameter("endereco"));
        cli.setTelefone(request.getParameter("telefone"));
        cli.setCep(request.getParameter("cep"));
        try {
            PFDao.cadastrar(cli);
            session.setAttribute("cadastrado", true);
        }
        catch (SQLException e) {
            session.setAttribute("cadastrado", false);
        }

        response.sendRedirect("exibe-pf.jsp");

    %>

        