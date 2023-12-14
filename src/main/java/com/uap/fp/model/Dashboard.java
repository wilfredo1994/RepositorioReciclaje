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
public class Dashboard {
    
    private String material;
    private int acumuladoTotal;
    private double montoTotal;
    private String centroAcopio;
    private List<TipoReciclaje> listaTipoReciclaje;
    private List<CentroAcopio> listaCentros;

    public Dashboard() {
    }

    public Dashboard(String material, int acumuladoTotal, double montoTotal, String centroAcopio, List<TipoReciclaje> listaTipoReciclaje, List<CentroAcopio> listaCentros) {
        this.material = material;
        this.acumuladoTotal = acumuladoTotal;
        this.montoTotal = montoTotal;
        this.centroAcopio = centroAcopio;
        this.listaTipoReciclaje = listaTipoReciclaje;
        this.listaCentros = listaCentros;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public int getAcumuladoTotal() {
        return acumuladoTotal;
    }

    public void setAcumuladoTotal(int acumuladoTotal) {
        this.acumuladoTotal = acumuladoTotal;
    }

    public double getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(double montoTotal) {
        this.montoTotal = montoTotal;
    }

    public String getCentroAcopio() {
        return centroAcopio;
    }

    public void setCentroAcopio(String centroAcopio) {
        this.centroAcopio = centroAcopio;
    }

    public List<TipoReciclaje> getListaTipoReciclaje() {
        return listaTipoReciclaje;
    }

    public void setListaTipoReciclaje(List<TipoReciclaje> listaTipoReciclaje) {
        this.listaTipoReciclaje = listaTipoReciclaje;
    }

    public List<CentroAcopio> getListaCentros() {
        return listaCentros;
    }

    public void setListaCentros(List<CentroAcopio> listaCentros) {
        this.listaCentros = listaCentros;
    }
    
    
}
