<%@ page import="model.PessoaJuridica" %>
<%@ page import="dao.PJDao" %>
<%@ page import="java.sql.SQLException" %>

    <%
        request.setCharacterEncoding("UTF-8");
        PessoaJuridica cli = new PessoaJuridica();
        
        cli.setCnpj(request.getParameter("cnpj"));
        cli.setNome(request.getParameter("nome"));
        cli.setRazaoSocial(request.getParameter("razao-social"));
        cli.setEndereco(request.getParameter("endereco"));
        cli.setTelefone(request.getParameter("telefone"));
        cli.setCep(request.getParameter("cep"));
        try {
            PJDao.cadastrar(cli);
            session.setAttribute("cadastrado", true);
        }
        catch (SQLException e) {
            session.setAttribute("cadastrado", false);
        }

        response.sendRedirect("exibe-pj.jsp");

    %>

        