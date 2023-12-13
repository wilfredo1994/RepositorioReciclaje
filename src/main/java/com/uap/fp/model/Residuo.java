/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.model;

/**
 *
 * @author PC
 */
public class Residuo {
 
    private int idResiduo;
    private String procesoGenerador;
    private String tipoResiduo;
    private int cantidad;
    private String centroAcopio;
    private String unidad;
    private int estado;

    public Residuo(int idResiduo, String procesoGenerador, String tipoResiduo, int cantidad, String centroAcopio, String unidad, int estado) {
        this.idResiduo = idResiduo;
        this.procesoGenerador = procesoGenerador;
        this.tipoResiduo = tipoResiduo;
        this.cantidad = cantidad;
        this.centroAcopio = centroAcopio;
        this.unidad = unidad;
        this.estado = estado;
    }

   
    public Residuo() {
    }

    public int getIdResiduo() {
        return idResiduo;
    }

    public void setIdResiduo(int idResiduo) {
        this.idResiduo = idResiduo;
    }

    public String getProcesoGenerador() {
        return procesoGenerador;
    }

    public void setProcesoGenerador(String procesoGenerador) {
        this.procesoGenerador = procesoGenerador;
    }

    public String getTipoResiduo() {
        return tipoResiduo;
    }

    public void setTipoResiduo(String tipoResiduo) {
        this.tipoResiduo = tipoResiduo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getCentroAcopio() {
        return centroAcopio;
    }

    public void setCentroAcopio(String centroAcopio) {
        this.centroAcopio = centroAcopio;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
    
}
