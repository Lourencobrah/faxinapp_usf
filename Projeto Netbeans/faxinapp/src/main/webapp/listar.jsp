<%-- 
    Document   : listar
    Created on : 28 de mai. de 2022, 22:44:50
    Author     : mrcsa
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
    import="java.sql.*"
    %>
<%@page language="java" import="conexao.conecta" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de agendamentos</title>
        <style>
            .tabela{
                border: solid 2px #000000;
                text-align: center;
                padding: 5px;
                width: 40%;
                font-size: 18px;
            }            
        </style>
    </head>
    <body>
        
        <table class="tabela">
            <caption><h1>LISTA DE AGENDAMENTOS:</h1></caption>
            <tr>
                <th>Profissional</th>
                <th>Data</th>
                <th>Horário</th>
                <th>Tipo de serviço</th>
            </tr>
        
        <%
            String sql = "SELECT * FROM agendamento;";
            
            Connection con = conecta.getConnection();
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            ResultSet rset = stmt.executeQuery();
            
            while(rset.next()){
            
            String profissional = rset.getString("profissional");
            String data = rset.getString("data");
            String horario = rset.getString("horario");
            String tiposervico = rset.getString("tipo_servico");
            %>           
                <tr>
                    <td><%out.println(profissional);%></td>
                    <td><%out.println(data);%></td>
                    <td><%out.println(horario);%></td>
                    <td><%out.println(tiposervico);}%></td>
                </tr>
        </table><br>
            <a href="./principal.html">Voltar para a pagina inicial</a>
    </body>
</html>
