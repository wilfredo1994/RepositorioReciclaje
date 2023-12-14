/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.model;

/**
 *
 * @author PC
 */
public class TipoReciclaje {
    private int idTipo;
    private String Nombre;
    private int Cantidad;
    private double monto;

    public TipoReciclaje() {
    }

    public TipoReciclaje(int idTipo, String Nombre, int Cantidad, double monto) {
        this.idTipo = idTipo;
        this.Nombre = Nombre;
        this.Cantidad = Cantidad;
        this.monto = monto;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }    

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
    
    
}
