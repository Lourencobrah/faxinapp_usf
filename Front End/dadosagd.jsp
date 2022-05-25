<%-- 
    Document   : dadosagd
    Created on : 17 de mai. de 2022, 18:13:35
    Author     : mrcsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"
        %>
<%@page language="java" import="conexao.ConexaoDAO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento Efetuado!</title>
    </head>
    <body>
        <h1>AGENDAMENTO EFETUADO!</h1>
        <%  
        String profissional = request.getParameter("profissional");
        String data = request.getParameter("data");
        String horario = request.getParameter("horario");
        String tiposervico = request.getParameter("tiposervico");
        
        out.println(profissional);
        try {
                Connection con = ConexaoDAO.getConnection();
                String sql = "insert into agendamento(profissional,data,horario,tiposervico) value (?,?,?,?)";  
                PreparedStatement stmt = con.prepareStatement(sql);
                
                stmt.setString(1, profissional);
                stmt.setString(2, data);
                stmt.setString(3, horario);
                stmt.setString(4, tiposervico);
                
                
                stmt.execute();
                stmt.close();
                con.close();
                
                out.print("Deu Certo!");
                
            } catch (Exception e) {
                out.print("Deu Erro!" + e);
            }
        %>
    </body>
</html>
