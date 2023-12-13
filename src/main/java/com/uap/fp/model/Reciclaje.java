/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.model;

/**
 *
 * @author PC
 */
public class Reciclaje {
    
    private int idReciclaje;
    private int idTipo;
    private String tipoReciclaje;
    private int idAcopio;    
    private String centroAcopio;
    private int cantidad;    
    private double precio;
    private int idUnidad;
    private String unidad;
    private String fecha;
    private int estado;
    private String descEstado;

    public Reciclaje(int idReciclaje, int idTipo, String tipoReciclaje, int idAcopio, String centroAcopio, int cantidad, double precio, int idUnidad, String unidad, String fecha, int estado, String descEstado) {
        this.idReciclaje = idReciclaje;
        this.idTipo = idTipo;
        this.tipoReciclaje = tipoReciclaje;
        this.idAcopio = idAcopio;
        this.centroAcopio = centroAcopio;
        this.cantidad = cantidad;
        this.precio = precio;
        this.idUnidad = idUnidad;
        this.unidad = unidad;
        this.fecha = fecha;
        this.estado = estado;
        this.descEstado = descEstado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDescEstado() {
        return descEstado;
    }

    public void setDescEstado(String descEstado) {
        this.descEstado = descEstado;
    }


    

    

    public Reciclaje() {
    }

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public int getIdAcopio() {
        return idAcopio;
    }

    public void setIdAcopio(int idAcopio) {
        this.idAcopio = idAcopio;
    }

    public int getIdUnidad() {
        return idUnidad;
    }

    public void setIdUnidad(int idUnidad) {
        this.idUnidad = idUnidad;
    }

    
    
    public int getIdReciclaje() {
        return idReciclaje;
    }

    public void setIdReciclaje(int idReciclaje) {
        this.idReciclaje = idReciclaje;
    }

    public String getTipoReciclaje() {
        return tipoReciclaje;
    }

    public void setTipoReciclaje(String tipoReciclaje) {
        this.tipoReciclaje = tipoReciclaje;
    }

    public String getCentroAcopio() {
        return centroAcopio;
    }

    public void setCentroAcopio(String centroAcopio) {
        this.centroAcopio = centroAcopio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
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
