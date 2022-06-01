/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conecta {
    
    public static Connection getConnection() throws SQLException{
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            return DriverManager.getConnection("jdbc:mysql://localhost/prototipo", "root","admin");
            
        } catch (ClassNotFoundException e){
            
            throw new SQLException(e.getException());
        }
        
        
    }
}
