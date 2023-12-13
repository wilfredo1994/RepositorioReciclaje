/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.uap.fp.interfaces;

import com.uap.fp.model.Reciclaje;
import java.util.List;

/**
 *
 * @author PC
 */
public interface ReciclajeInterfaces {
    public List listar();
    public List listarReporte();
    public List buscarListaReporte(String tipoReciclaje, String fechaInicio, String FechaFin);
    public Reciclaje list(int id);
    public int eliminar(int id);
    public int Registrar(Reciclaje objeto);
    public int Actualizar(Reciclaje objeto);
    
    
}
