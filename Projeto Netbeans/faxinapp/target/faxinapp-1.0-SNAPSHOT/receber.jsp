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
        <title>Agendamento Efetuado!</title>
    </head>
    <body>
        <h1>AGENDAMENTO EFETUADO!</h1>
        
        <a href="./principal.html">Voltar para a pagina inicial</a>
        <% 
            String profissional = request.getParameter("profissional");
            String data = request.getParameter("data");
            String horario = request.getParameter("horario");
            String tiposervico = request.getParameter("tiposervico");
 
            Connection con = conecta.getConnection();
            String sql = "insert into agendamento(profissional,data,horario,tipo_servico) value (?,?,?,?);";
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            stmt.setString(1,profissional);
            stmt.setString(2,data);
            stmt.setString(3,horario);
            stmt.setString(4,tiposervico);
            stmt.execute();
            stmt.close();
            con.close();
                        
        %>
        
        
    </body>
</html>
