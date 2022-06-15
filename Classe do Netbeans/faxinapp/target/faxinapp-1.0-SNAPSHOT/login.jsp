<%-- 
    Document   : login
    Created on : 7 de jun. de 2022, 21:31:45
    Author     : vinicius
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexao.conecta"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>LOGIN</h1>
    </body>
    <%
        
        Connection con = conecta.getConnection();
    %> 
    
    <%
        if (con !=null) {
                if ((request.getParameter("email") != null) && (request.getParameter("senha") !=null)) {
                    String email, senha;
                    Statement st;
                    ResultSet rs;
                    
                    email = request.getParameter("email");
                    senha = request.getParameter("senha");
  
                    st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                    rs = st.executeQuery("select * from usuario where email ='" +email+"' and senha"+senha+"'");
                    
                    if (rs.next()) {
                            response.sendRedirect("principal.html");
                        }
                    }
            }else {
            out.println("Não é possível logar");
            
        }
    %>    
</html>
