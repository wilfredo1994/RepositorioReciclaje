/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.modeldao;

import com.uap.fp.config.Conexion;
import com.uap.fp.interfaces.DashboardInterfaces;
import com.uap.fp.model.CentroAcopio;
import com.uap.fp.model.Dashboard;
import com.uap.fp.model.TipoReciclaje;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jheisson
 */
public class DashboardDAO implements DashboardInterfaces {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<CentroAcopio> lista() {

        List<CentroAcopio> list = new ArrayList<CentroAcopio>();
        String sql = "select  case r.centro_acopio \n"
                + "when '1' THEN 'Donde Reciclar' \n"
                + "when '2' THEN 'Resiter Perú' \n"
                + "when '3' THEN 'Real Plaza' \n"
                + "when '4' THEN 'Portal Recicla Lima' \n"
                + "when '5' THEN 'EcoCentury'\n"
                + "end centro_acopio,\n"
                + "sum(r.cantidad) cantidad\n"
                + "from reciclaje r \n"
                + "where estado=1\n"
                + "group by r.centro_acopio";
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                CentroAcopio rec = new CentroAcopio();
                rec.setCentroAcopio(rs.getString("centro_acopio"));
                rec.setCantidad(Integer.parseInt(rs.getString("cantidad")));
                list.add(rec);
            }

        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public List<TipoReciclaje> listaTipoReciclaje() {
        List<TipoReciclaje> list = new ArrayList<TipoReciclaje>();
        String sql = "select  r.tipo_reciclaje id, \n"
                + "case r.tipo_reciclaje \n"
                + "when '1' THEN 'Cartón'  \n"
                + "when '2' THEN 'Papel'  \n"
                + "when '3' THEN 'Vidrio'  \n"
                + "when '4' THEN 'Lata'  \n"
                + "when '5' THEN 'Plástico' \n"
                + "when '6' THEN 'Materia orgánica' \n"
                + "end tipo_reciclaje, \n"
                + "sum(r.cantidad) cantidad, \n"
                + "sum(r.precio) montoTotal \n"
                + "from reciclaje r  \n"
                + "where estado=1 \n"
                + "group by r.tipo_reciclaje";
        try {
            con = cn.establecerConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                TipoReciclaje rec = new TipoReciclaje();
                rec.setIdTipo(Integer.parseInt(rs.getString("id")));
                rec.setNombre(rs.getString("tipo_reciclaje"));
                rec.setCantidad(Integer.parseInt(rs.getString("cantidad")));
                rec.setMonto(Double.parseDouble(rs.getString("montoTotal")));
                list.add(rec);
            }

        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Dashboard consultar() {
        
        Dashboard dash = new Dashboard();
        try
        {   
            int contador=0;
            String material = "";
            String centro = "";
            int acumulador = 0;
            double saldo = 0;
            int canti=0;
            
            List<CentroAcopio> lista = lista();
            List<TipoReciclaje> listaTipoReciclaje = listaTipoReciclaje();
            dash.setListaCentros(lista);
            dash.setListaTipoReciclaje(listaTipoReciclaje);
            
            for(CentroAcopio lis : lista) {
                acumulador = acumulador + lis.getCantidad();
                if(canti < lis.getCantidad()){
                    canti = lis.getCantidad();
                    centro = lis.getCentroAcopio();
                }                
            }
            canti = 0;
            for(TipoReciclaje lis : listaTipoReciclaje) {
                saldo=saldo + lis.getMonto();
                if(canti < lis.getCantidad()){
                    canti = lis.getCantidad();
                    material = lis.getNombre();
                }                
            }
            
            dash.setAcumuladoTotal(acumulador);
            dash.setCentroAcopio(centro);
            dash.setMaterial(material);
            dash.setMontoTotal(saldo);
            
        }
        catch(Exception ex){            
        }
        
        return dash;
    }

}
