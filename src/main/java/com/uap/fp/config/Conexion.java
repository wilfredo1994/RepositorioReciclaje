/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



/**
 *
 * @author PC
 */
public class Conexion {
    
    Connection conectar = null;
    
    String usuario = ".";
    String contrasena = "";
    String bd = "BD_Usuarios";
    String ip = "localhost";
    String puerto = "1433";
    
   /* public Connection establecerConexion(){
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
            //String cadena = "jdbc:sqlserver://localhost:"+puerto+";"+"databaseName="+bd+";integratedSecurity=true;encrypt=true;trustServerCertificate=true";                     
            
            //String cadena = "jdbc:sqlserver://localhost:1433;databaseName=BD_Usuarios;";
            
            String cadena =
"jdbc:sqlserver://localhost:1433;" +
 "databaseName=BD_Usuarios;integratedSecurity=true;" +
 "encrypt=true; trustServerCertificate=true;" +
 "trustStore=storeName;trustStorePassword=storePassword";
            
            conectar = DriverManager.getConnection(cadena,"sa","123456");
            JOptionPane.showMessageDialog(null, "se conecto");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error : " + e.toString());
        }
        
        return conectar;
    }*/
    
     public Connection establecerConexion(){
        
         Connection conexion = null;

            try {
                    // Paso 1: Cargar el controlador JDBC de Oracle
                    Class.forName("oracle.jdbc.driver.OracleDriver");

                    // Paso 2: Establecer la conexión con Oracle local
                    String url = "jdbc:oracle:thin:@localhost:1521:xe";
                    String usuario = "BDGESTION";
                    String contraseña = "oracle123";

                    conexion = DriverManager.getConnection(url, usuario, contraseña);

                    System.out.println("¡Conexión exitosa!");

                    // Puedes realizar operaciones en la base de datos aquí

            } catch (ClassNotFoundException e) {
                    e.printStackTrace();
            } catch (SQLException e) {
                    e.printStackTrace();
            }
        
        return conexion;
    }
    
}
