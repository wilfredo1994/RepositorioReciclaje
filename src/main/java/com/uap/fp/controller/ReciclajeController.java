/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uap.fp.controller;

import com.uap.fp.model.Reciclaje;
import com.uap.fp.modeldao.ReciclajeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


/**
 *
 * @author PC
 */
@WebServlet(name = "ReciclajeController", urlPatterns = {"/ReciclajeController"})
public class ReciclajeController extends HttpServlet {

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
        processRequest(request, response);

        String action = request.getParameter("accion");
        String id = "";
        String tipoReciclaje = "";
        String cantidad = "";
        String unidad = "";
        String centroAcopio = "";
        String precio = "";

        switch (action) {
            case "Guardar":
                id = request.getParameter("InputId");
                tipoReciclaje = request.getParameter("InputRecyclingTypeEdit");
                cantidad = request.getParameter("InputAmountEdit");
                unidad = request.getParameter("InputUnitEdit");
                centroAcopio = request.getParameter("InputCollectionCenterEdit");
                precio = request.getParameter("InputPriceEdit");
                Reciclaje objetog = new Reciclaje();
                objetog.setIdReciclaje(Integer.parseInt(id));
                objetog.setIdTipo(Integer.parseInt(tipoReciclaje));
                objetog.setIdAcopio(Integer.parseInt(centroAcopio));
                objetog.setCantidad(Integer.parseInt(cantidad));
                objetog.setPrecio(Double.parseDouble(precio));
                objetog.setIdUnidad(Integer.parseInt(unidad));
                ReciclajeDAO recdaog = new ReciclajeDAO();
                int guardar = recdaog.Actualizar(objetog);
                List<Reciclaje> listaRecg = recdaog.listar();
                request.setAttribute("datosLista", listaRecg);
                // Redireccionar a la lista después de guardar la edición        
                request.getRequestDispatcher("views/Reciclaje/reciclaje.jsp").forward(request, response);
                break;
            case "Registrar":
                tipoReciclaje = request.getParameter("InputRecyclingType");
                cantidad = request.getParameter("InputAmount");
                unidad = request.getParameter("InputUnit");
                centroAcopio = request.getParameter("InputCollectionCenter");
                precio = request.getParameter("InputPrice");
                Reciclaje objeto = new Reciclaje();
                objeto.setIdTipo(Integer.parseInt(tipoReciclaje));
                objeto.setIdAcopio(Integer.parseInt(centroAcopio));
                objeto.setCantidad(Integer.parseInt(cantidad));
                objeto.setPrecio(Double.parseDouble(precio));
                objeto.setIdUnidad(Integer.parseInt(unidad));
                ReciclajeDAO recdaor = new ReciclajeDAO();
                int registrar = recdaor.Registrar(objeto);
                List<Reciclaje> listaRecr = recdaor.listar();
                request.setAttribute("datosLista", listaRecr);
                request.getRequestDispatcher("views/Reciclaje/reciclaje.jsp").forward(request, response);
                break;
            case "Eliminar":
                id = request.getParameter("eliminarId");
                ReciclajeDAO recdaoe = new ReciclajeDAO();
                int eliminar = recdaoe.eliminar(Integer.parseInt(id));
                List<Reciclaje> listaRece = recdaoe.listar();
                request.setAttribute("datosLista", listaRece);
                request.getRequestDispatcher("views/Reciclaje/reciclaje.jsp").forward(request, response);
                break;
            case "Buscar":
                ReciclajeDAO recdaob = new ReciclajeDAO();
                tipoReciclaje = request.getParameter("InputRecyclingType");
                String fechaInicio = request.getParameter("dtpFechaIni");
                String fechaFin = request.getParameter("dtpFechaFin");                
                List<Reciclaje> listaRecb = recdaob.buscarListaReporte(tipoReciclaje, formatearFecha(fechaInicio), formatearFecha(fechaFin));
                request.setAttribute("datosLista", listaRecb);
                request.getRequestDispatcher("views/Reciclaje/reportes.jsp#").forward(request, response);
                //request.getRequestDispatcher("views/Reciclaje/reportes.jsp").forward(request, response);
                break;
            case "Exportar":
                ReciclajeDAO recdaoex = new ReciclajeDAO();
                tipoReciclaje = request.getParameter("InputRecyclingType");
                String fechaInicioex = request.getParameter("dtpFechaIni");
                String fechaFinex = request.getParameter("dtpFechaFin");                
                List<Reciclaje> listaRecex = recdaoex.buscarListaReporte(tipoReciclaje, formatearFecha(fechaInicioex), formatearFecha(fechaFinex));
                
                
                Workbook workbook = new XSSFWorkbook();
                Sheet sheet = workbook.createSheet("ReporteReciclaje");
                
                CellStyle dateCellStyle = workbook.createCellStyle();
                CreationHelper createHelper = workbook.getCreationHelper();
                dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd/MM/yyyy"));                
                //dateCellStyle.setFillBackgroundColor(IndexedColors.BLUE.index);
                //dateCellStyle.setFillPattern(FillPatternType.BIG_SPOTS);
        
                // Crear encabezados
                Row headerRow = sheet.createRow(0);
                headerRow.createCell(0).setCellValue("Tipo Reciclaje");
                headerRow.createCell(1).setCellValue("Cantidad");
                headerRow.createCell(2).setCellValue("Unidad");
                headerRow.createCell(3).setCellValue("Centro de Acopio");
                headerRow.createCell(4).setCellValue("Precio");
                headerRow.createCell(5).setCellValue("Fecha Registro");
                headerRow.createCell(6).setCellValue("Estado");

                // Llenar la hoja con datos
                int rowNum = 1;
                for (Reciclaje objetox : listaRecex) {
                Row row = sheet.createRow(rowNum++);
                row.createCell(0).setCellValue(objetox.getTipoReciclaje());
                row.createCell(1).setCellValue(objetox.getCantidad());
                row.createCell(2).setCellValue(objetox.getUnidad()); // Ajusta el formato de fecha según tus necesidades
                row.createCell(3).setCellValue(objetox.getCentroAcopio()); // Ajusta el formato de fecha según tus necesidades
                row.createCell(4).setCellValue(objetox.getPrecio()); // Ajusta el formato de fecha según tus necesidades                
                Cell dateCell = row.createCell(5);
                dateCell.setCellValue(objetox.getFecha());
                dateCell.setCellStyle(dateCellStyle);
                //row.createCell(5).setCellValue(objetox.getFecha()); // Ajusta el formato de fecha según tus necesidades
                row.createCell(6).setCellValue(objetox.getDescEstado()); // Ajusta el formato de fecha según tus necesidades
                }

                // Establecer la respuesta para el navegador
                response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
                response.setHeader("Content-Disposition", "attachment; filename=datos_excel.xlsx");

                // Obtener el flujo de salida de la respuesta
                OutputStream outputStream = response.getOutputStream();

                // Escribir el libro de trabajo en el flujo de salida
                workbook.write(outputStream);
                workbook.close();

                // Limpiar y cerrar el flujo de salida
                outputStream.flush();
                outputStream.close();
                
                request.setAttribute("datosLista", listaRecex);
                request.getRequestDispatcher("views/Reciclaje/reportes.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }

    }

    public static String formatearFecha(String fechaEnFormatoOriginal) {

        if (fechaEnFormatoOriginal.equals("")) {
            return null;
        }

        SimpleDateFormat formatoEntrada = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat formatoSalida = new SimpleDateFormat("dd/MM/yyyy");

        try {

            Date fecha = formatoEntrada.parse(fechaEnFormatoOriginal);

            return formatoSalida.format(fecha);
        } catch (Exception e) {

            e.printStackTrace();
            return null;
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
