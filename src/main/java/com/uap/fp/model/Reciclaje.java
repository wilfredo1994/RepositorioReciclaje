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
    private String tipoReciclaje;
    private String centroAcopio;
    private int cantidad;
    private double precio;
    private String unidad;

    public Reciclaje(int idReciclaje, String tipoReciclaje, String centroAcopio, int cantidad, double precio, String unidad) {
        this.idReciclaje = idReciclaje;
        this.tipoReciclaje = tipoReciclaje;
        this.centroAcopio = centroAcopio;
        this.cantidad = cantidad;
        this.precio = precio;
        this.unidad = unidad;
    }

    public Reciclaje() {
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
    
    
    
}
