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
        String sql="select * from usuario2";
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Usuario usr=new Usuario();
                usr.setId(rs.getInt("ID"));
                usr.setNombre(rs.getString("NOMBRE"));
                usr.setCorreo(rs.getString("CORREO"));
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

    @Override
    public Usuario validar(String usuario, String clave) {
        Usuario user=new Usuario();
        String query= "select * from usuario where correo=? and clave=?";
        //String query= "select * from usuario";
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(query);
            ps.setString(1, usuario);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while(rs.next()){                
                user.setId(rs.getInt("ID"));
                user.setNombre(rs.getString("NOMBRE"));
                user.setCorreo(rs.getString("CORREO"));                
            }
            
            
        } catch (Exception e) {
        }
        
        return user;
    }
    
}
