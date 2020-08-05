<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html lang="pt-br">

    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="content type">
        <title>Cadastro de Pessoa Juridica</title>
    </head>

    <body>

        <form method="POST" action="cadastra-pj.jsp">
                
            <p>
                <label for="cnpj">CNPJ</label><br>
                <input id="cnpj" type="text" name="cnpj" size="50" maxlenght="50" placeholder="00.000.000/0000-00" required>
            </p>

            <p>
                <label for="nome">Nome</label><br>
                <input id="nome" type="text" name="nome" size="50" maxlenght="50" required>
            </p>

            <p>
                <label for="razao-social">Razão Social</label><br>
                <input id="razao-social" type="text" name="razao-social" size="50" maxlenght="50" required>
            </p>

            <p>
                <label for="endereco">Endereço</label><br>
                <input id="endereco" type="text" name="endereco" size="50" maxlenght="50" required>
            </p>

            <p>
                <label for="telefone">Telefone</label><br>
                <input id="telefone" type="text" name="telefone" size="50" maxlenght="50" placeholder="(00) 00000-0000" required>
            </p>

            <p>
                <label for="cep">CEP</label><br>
                <input id="cep" type="text" name="cep" size="50" maxlenght="50" placeholder="00.000-000" required>
            </p>

            <button class="btn" type="submit">Cadastrar</button>
        </form>

    </body>

</html>