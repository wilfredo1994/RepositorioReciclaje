/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.modeldao;

import com.uap.fp.config.Conexion;
import com.uap.fp.interfaces.ReciclajeInterfaces;
import com.uap.fp.model.Reciclaje;
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
public class ReciclajeDAO implements ReciclajeInterfaces{

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Reciclaje r = new Reciclaje();
    
    @Override
    public List listar() {
        
        ArrayList<Reciclaje> list=new ArrayList<>();
        String sql= "select \n" +
                    "id_reciclaje,\n" +
                    "r.tipo_reciclaje id_tipo,\n" +
                    "case r.tipo_reciclaje \n" +
                    "when '1' THEN 'Cartón'\n" +
                    "when '2' THEN 'Papel'\n" +
                    "when '3' THEN 'Vidrio'\n" +
                    "when '4' THEN 'Lata'\n" +
                    "when '5' THEN 'Plástico'\n" +
                    "when '6' THEN 'Materia orgánica'\n" +
                    "end tipo_reciclaje,\n" +
                    "r.cantidad,\n" +
                    "r.unidad id_unidad,\n" +
                    "case r.unidad \n" +
                    "when '1' THEN 'Kilogramo (kg)'\n" +
                    "when '2' THEN 'Gramos (g)'\n" +
                    "when '3' THEN 'Toneladas (t)'\n" +
                    "end unidad,\n" +
                    "r.centro_acopio id_acopio,\n" +
                    "case r.centro_acopio \n" +
                    "when '1' THEN 'Donde Reciclar'\n" +
                    "when '2' THEN 'Resiter Perú'\n" +
                    "when '3' THEN 'Real Plaza'\n" +
                    "when '4' THEN 'Portal Recicla Lima'\n" +
                    "when '5' THEN 'EcoCentury'\n" +
                    "end centro_acopio,\n" +
                    "r.precio,\n" +
                    "r.estado\n" +
                    "from reciclaje r\n" +
                    "where r.estado = 1";
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Reciclaje rec=new Reciclaje();
                rec.setIdReciclaje(rs.getInt("id_reciclaje"));                
                rec.setIdTipo(Integer.parseInt(rs.getString("id_tipo")));
                rec.setTipoReciclaje(rs.getString("tipo_reciclaje"));
                rec.setCantidad(Integer.parseInt(rs.getString("cantidad")));
                rec.setIdUnidad(Integer.parseInt(rs.getString("id_unidad")));
                rec.setUnidad(rs.getString("unidad"));
                rec.setIdAcopio(Integer.parseInt(rs.getString("id_acopio")));
                rec.setCentroAcopio(rs.getString("centro_acopio"));
                rec.setPrecio(Double.parseDouble(rs.getString("precio")));
                rec.setEstado(Integer.parseInt(rs.getString("estado")));
                list.add(rec);
            }
            
        } catch (Exception e) {
        }
        return list;
        
    }

    @Override
    public Reciclaje list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int eliminar(int id) {
        
        int retorno = 1;
        
        try (Connection connection = cn.establecerConexion()) {
            // Crear la consulta SQL para la eliminación
            String sql = "update reciclaje set estado = 0 where id_reciclaje=?";            
            // Crear la declaración preparada con el ID como parámetro
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);
                // Ejecutar la eliminación
                statement.executeUpdate();                                
            }
        } catch (Exception e) {
            retorno = 0;
            e.printStackTrace();
        }
        
        return retorno;
    }

    @Override
    public int Registrar(Reciclaje objeto) {
        int retorno = 1;
        try (Connection connection = cn.establecerConexion()) {
            // Crear la consulta SQL para la inserción
            String sql = "insert into reciclaje(tipo_reciclaje,centro_acopio,cantidad,precio,unidad)values(?,?,?,?,?)";

            // Crear la declaración preparada con el nombre como parámetro
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, objeto.getIdTipo());
                statement.setInt(2, objeto.getIdAcopio());
                statement.setInt(3, objeto.getCantidad());
                statement.setDouble(4, objeto.getPrecio());
                statement.setInt(5, objeto.getIdUnidad());
                // Ejecutar la inserción
                statement.executeUpdate();
            }
        } catch (Exception e) {
            retorno = 0;
            e.printStackTrace();
        }
        return retorno;
    }

    @Override
    public int Actualizar(Reciclaje objeto) {
        int retorno = 1;
        try (Connection connection = cn.establecerConexion()) {
            // Crear la consulta SQL para la inserción
            String sql = "update reciclaje set tipo_reciclaje = ?,centro_acopio= ?,cantidad= ?,precio= ?,unidad= ? where id_reciclaje = ?";

            // Crear la declaración preparada con el nombre como parámetro
            try (PreparedStatement statement = connection.prepareStatement(sql)) {                
                statement.setInt(1, objeto.getIdTipo());
                statement.setInt(2, objeto.getIdAcopio());
                statement.setInt(3, objeto.getCantidad());
                statement.setDouble(4, objeto.getPrecio());
                statement.setInt(5, objeto.getIdUnidad());
                statement.setInt(6, objeto.getIdReciclaje());
                // Ejecutar la inserción
                statement.executeUpdate();
            }
        } catch (Exception e) {
            retorno = 0;
            e.printStackTrace();
        }
        return retorno;
    }

    @Override
    public List listarReporte() {
        ArrayList<Reciclaje> list=new ArrayList<>();
        String sql= "select \n" +
                    "id_reciclaje,\n" +
                    "r.tipo_reciclaje id_tipo,\n" +
                    "case r.tipo_reciclaje \n" +
                    "when '1' THEN 'Cartón'\n" +
                    "when '2' THEN 'Papel'\n" +
                    "when '3' THEN 'Vidrio'\n" +
                    "when '4' THEN 'Lata'\n" +
                    "when '5' THEN 'Plástico'\n" +
                    "when '6' THEN 'Materia orgánica'\n" +
                    "end tipo_reciclaje,\n" +
                    "r.cantidad,\n" +
                    "r.unidad id_unidad,\n" +
                    "case r.unidad \n" +
                    "when '1' THEN 'Kilogramo (kg)'\n" +
                    "when '2' THEN 'Gramos (g)'\n" +
                    "when '3' THEN 'Toneladas (t)'\n" +
                    "end unidad,\n" +
                    "r.centro_acopio id_acopio,\n" +
                    "case r.centro_acopio \n" +
                    "when '1' THEN 'Donde Reciclar'\n" +
                    "when '2' THEN 'Resiter Perú'\n" +
                    "when '3' THEN 'Real Plaza'\n" +
                    "when '4' THEN 'Portal Recicla Lima'\n" +
                    "when '5' THEN 'EcoCentury'\n" +
                    "end centro_acopio,\n" +
                    "r.precio,\n" +
                    "r.estado,\n" +
                    "case r.estado \n" +
                    "when '0' THEN 'Inactivo'\n" +
                    "when '1' THEN 'Activo'\n" +
                    "end descestado,\n" +
                    "TO_CHAR(r.fecha_registro, 'DD/MM/YYYY') fecha_registro\n" +
                    "from reciclaje r";
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);            
            rs = ps.executeQuery();
            
            while(rs.next()){
                Reciclaje rec=new Reciclaje();
                rec.setIdReciclaje(rs.getInt("id_reciclaje"));                
                rec.setIdTipo(Integer.parseInt(rs.getString("id_tipo")));
                rec.setTipoReciclaje(rs.getString("tipo_reciclaje"));
                rec.setCantidad(Integer.parseInt(rs.getString("cantidad")));
                rec.setIdUnidad(Integer.parseInt(rs.getString("id_unidad")));
                rec.setUnidad(rs.getString("unidad"));
                rec.setIdAcopio(Integer.parseInt(rs.getString("id_acopio")));
                rec.setCentroAcopio(rs.getString("centro_acopio"));
                rec.setPrecio(Double.parseDouble(rs.getString("precio")));
                rec.setEstado(Integer.parseInt(rs.getString("estado")));
                rec.setDescEstado(rs.getString("descestado"));
                rec.setFecha(rs.getString("fecha_registro"));
                list.add(rec);
            }
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public List buscarListaReporte(String tipoReciclaje, String fechaInicio, String FechaFin) {
        ArrayList<Reciclaje> list=new ArrayList<>();
        String sql= "select \n" +
                    "id_reciclaje,\n" +
                    "r.tipo_reciclaje id_tipo,\n" +
                    "case r.tipo_reciclaje \n" +
                    "when '1' THEN 'Cartón'\n" +
                    "when '2' THEN 'Papel'\n" +
                    "when '3' THEN 'Vidrio'\n" +
                    "when '4' THEN 'Lata'\n" +
                    "when '5' THEN 'Plástico'\n" +
                    "when '6' THEN 'Materia orgánica'\n" +
                    "end tipo_reciclaje,\n" +
                    "r.cantidad,\n" +
                    "r.unidad id_unidad,\n" +
                    "case r.unidad \n" +
                    "when '1' THEN 'Kilogramo (kg)'\n" +
                    "when '2' THEN 'Gramos (g)'\n" +
                    "when '3' THEN 'Toneladas (t)'\n" +
                    "end unidad,\n" +
                    "r.centro_acopio id_acopio,\n" +
                    "case r.centro_acopio \n" +
                    "when '1' THEN 'Donde Reciclar'\n" +
                    "when '2' THEN 'Resiter Perú'\n" +
                    "when '3' THEN 'Real Plaza'\n" +
                    "when '4' THEN 'Portal Recicla Lima'\n" +
                    "when '5' THEN 'EcoCentury'\n" +
                    "end centro_acopio,\n" +
                    "r.precio,\n" +
                    "r.estado,\n" +
                    "case r.estado \n" +
                    "when '0' THEN 'Inactivo'\n" +
                    "when '1' THEN 'Activo'\n" +
                    "end descestado,\n" +
                    "TO_CHAR(r.fecha_registro, 'DD/MM/YYYY') fecha_registro\n" +
                    "from reciclaje r\n" +
                    "where (0 = ? or r.tipo_reciclaje = ?) and\n" +
                    "((TO_CHAR(r.fecha_registro, 'DD/MM/YYYY') between ? and ?) or\n" +
                    "(? is null and ? is null))";
        
        
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, tipoReciclaje);
            ps.setString(2, tipoReciclaje);
            ps.setString(3, fechaInicio);
            ps.setString(4, FechaFin);
            ps.setString(5, fechaInicio);
            ps.setString(6, FechaFin);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Reciclaje rec=new Reciclaje();
                rec.setIdReciclaje(rs.getInt("id_reciclaje"));                
                rec.setIdTipo(Integer.parseInt(rs.getString("id_tipo")));
                rec.setTipoReciclaje(rs.getString("tipo_reciclaje"));
                rec.setCantidad(Integer.parseInt(rs.getString("cantidad")));
                rec.setIdUnidad(Integer.parseInt(rs.getString("id_unidad")));
                rec.setUnidad(rs.getString("unidad"));
                rec.setIdAcopio(Integer.parseInt(rs.getString("id_acopio")));
                rec.setCentroAcopio(rs.getString("centro_acopio"));
                rec.setPrecio(Double.parseDouble(rs.getString("precio")));
                rec.setEstado(Integer.parseInt(rs.getString("estado")));
                rec.setDescEstado(rs.getString("descestado"));
                rec.setFecha(rs.getString("fecha_registro"));
                list.add(rec);
            }
            
        } catch (Exception e) {
        }
        return list;
    }
    
}
