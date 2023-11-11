/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.uap.fp.interfaces;

import com.uap.fp.model.Usuario;
import java.util.List;

/**
 *
 * @author PC
 */
public interface UsuarioInterfaces {
    public List listar();
    public Usuario list(int id);
    public Usuario validar(String usuario, String clave);
}
