/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.uap.fp.interfaces;

import com.uap.fp.model.CentroAcopio;
import com.uap.fp.model.TipoReciclaje;
import com.uap.fp.model.Dashboard;
import java.util.List;

/**
 *
 * @author Jheisson
 */
public interface DashboardInterfaces {
    public List<CentroAcopio> lista();
    public List<TipoReciclaje> listaTipoReciclaje();
    public Dashboard consultar();
}
