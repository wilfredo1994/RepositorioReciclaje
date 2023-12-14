/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uap.fp.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.uap.fp.model.CentroAcopio;
import com.uap.fp.model.Dashboard;
import com.uap.fp.modeldao.DashboardDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jheisson
 */
@WebServlet(name = "DashboardController", urlPatterns = {"/DashboardController"})
public class DashboardController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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

        String acceso = "";
        String action = request.getParameter("accion");

        switch (action) {
            case "dashboard":                 
                Dashboard dash = new Dashboard();
                
                DashboardDAO dao = new DashboardDAO();                
                dash = dao.consultar();
                //dash.setListaTipoReciclaje(dao.lista());
                                                
                // Construir el JSON con los datos
                ObjectMapper mapper = new ObjectMapper();
                String json = mapper.writerWithDefaultPrettyPrinter()
                            .writeValueAsString(dash);

                // Configurar la respuesta
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");

                // Enviar el JSON como respuesta
                PrintWriter out = response.getWriter();
                out.print(json);
                out.flush();
                out.close();
                break;
            default:
                throw new AssertionError();
        }

    }
//    private String construirJSON(List<CentroAcopio> listaDatos) {
//        
//        StringBuilder jsonBuilder = new StringBuilder();
//        jsonBuilder.append("{");
//        
//        jsonBuilder.append("\"data\": [");
//
//        for (int i = 0; i < listaDatos.size(); i++) {
//            jsonBuilder.append(listaDatos.get(i).getCantidad());
//            if (i < listaDatos.size() - 1) {
//                jsonBuilder.append(",");
//            }
//        }
//
//        jsonBuilder.append("]");        
//        jsonBuilder.append("}");
//
//        return jsonBuilder.toString();
//    }

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
        processRequest(request, response);
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
