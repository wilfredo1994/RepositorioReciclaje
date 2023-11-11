/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uap.fp.controller;

import com.uap.fp.model.Usuario;
import com.uap.fp.modeldao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class UsuarioController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //Configuraciones
    String acopio = "views/Configuracion/configuracion.jsp";
    String limite = "views/Configuracion/configuracion.jsp";
    
    //Administracion
    String departamento = "views/Administracion/administracion.jsp";
    String distrito = "views/Administracion/administracion.jsp";
    String centro = "views/Administracion/administracion.jsp";
    String usuario = "views/Administracion/administracion.jsp";
    
    //Dashboard
    String dashboard="views/Dashboard/dashboard.jsp";
    
    //Reciclaje
    String registro1="views/Reciclaje/reciclaje.jsp";
    String reportes1="views/Reciclaje/reciclaje.jsp";
    
    //Residuos
    String registro2="views/Residuos/residuos.jsp";
    String reportes2="views/Residuos/residuos.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String acceso="";
        String action=request.getParameter("accion");
                
//        if(action.equalsIgnoreCase("listar")){
//            acceso=listar;
//        }
        
        switch (action) {
            case "departamento":
                acceso=departamento;
                break;
            case "inicio":
                acceso=dashboard;
                break; 
            case "distrito":
            acceso=distrito;
                break; 
            case "centro":
            acceso=centro;
                break; 
            case "usuario":
            acceso=usuario;
                break; 
            case "acopio":
                acceso=acopio;
                break; 
            case "limite":
                acceso=limite;
                break; 
            case "registro1":
                acceso=registro1;
                break;      
            case "reportes1":
                acceso=reportes1;
                break; 
            case "registro2":
                acceso=registro2;
                break;      
            case "reportes2":
                acceso=reportes2;
                break;      
            default:
                throw new AssertionError();
        }
        
        request.getRequestDispatcher(acceso).forward(request, response);              
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        UsuarioDAO userdao = new UsuarioDAO();
        Usuario usr= new Usuario();
        List<Usuario> lst = null;
        switch (accion) {
            case "Ingresar":
                String usuario = request.getParameter("txtusuario");
                String clave = request.getParameter("txtclave");         
                usr = userdao.validar(usuario, clave);                
                if(usr.getCorreo()!=null){
                    RequestDispatcher vista=request.getRequestDispatcher(dashboard);
                    vista.forward(request, response);
                }else{
                    response.sendRedirect("views/Index.jsp");                    
                }                
                break;                    
            default:
                response.sendRedirect("views/Index.jsp");
                
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
