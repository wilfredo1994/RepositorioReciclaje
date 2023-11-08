/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.modeldao;

import com.uap.fp.config.Conexion;
import com.uap.fp.interfaces.UsuarioInterfaces;
import com.uap.fp.model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class UsuarioDAO implements UsuarioInterfaces {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();
        
    @Override
    public List listar() {
        ArrayList<Usuario> list=new ArrayList<>();
        String sql="select ID_ALUMNO,NOMBRES,APELLIDOS from ALUMNO";
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Usuario usr=new Usuario();
                usr.setId(rs.getInt("ID_ALUMNO"));
                usr.setNombres(rs.getString("NOMBRES"));
                usr.setApellidos(rs.getString("APELLIDOS"));
                list.add(usr);
            }
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Usuario list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
