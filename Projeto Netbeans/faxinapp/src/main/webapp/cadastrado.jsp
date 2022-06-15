<%-- 
    Document   : receber
    Created on : 28 de mai. de 2022, 13:15:47
    Author     : mrcsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
     
        import="java.sql.*"
    %>
<%@page language="java" import="conexao.conecta" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Efetuado!</title>
    </head>
    <body>
        <h1>CADASTRO EFETUADO!</h1>
        
        <a href="./principal.html">Voltar para a pagina inicial</a>
        <% 
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String cpf = request.getParameter("cpf");
            String cidade = request.getParameter("cidade");
            String rua = request.getParameter("rua");
            String bairro = request.getParameter("bairro");
            String numero = request.getParameter("numero");
            String cep = request.getParameter("cep");
 
            Connection con = conecta.getConnection();
            String sql = "insert into usuario(nome,email,senha,cpf,cidade,rua,bairro,numero,cep) value (?,?,?,?,?,?,?,?,?);";
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            stmt.setString(1,nome);
            stmt.setString(2,email);
            stmt.setString(3,senha);
            stmt.setString(4,cpf);
            stmt.setString(5,cidade);
            stmt.setString(6,rua);
            stmt.setString(7,bairro);
            stmt.setString(8,numero);
            stmt.setString(9,cep);
            stmt.execute();
            stmt.close();
            con.close();
                        
        %>
        
        
    </body>
</html>
