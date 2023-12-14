/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uap.fp.model;

import java.util.List;

/**
 *
 * @author Jheisson
 */
public class CentroAcopio {
    
    private String centroAcopio;
    private int cantidad;    

    public CentroAcopio() {
    }

    public CentroAcopio(String centroAcopio, int cantidad) {
        this.centroAcopio = centroAcopio;
        this.cantidad = cantidad;
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
    
    
}
