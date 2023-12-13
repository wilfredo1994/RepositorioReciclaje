<%-- 
    Document   : administracion
    Created on : 7 nov. 2023, 14:28:49
    Author     : Jheisson
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.uap.fp.model.Reciclaje" %>
<!DOCTYPE html>
<html>
    <head>
    <%@include file="../head.jsp" %>
    
    <!-- Custom styles for this template -->
    <link href="../../content/css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Custom styles for this page -->
    <link href="../../content/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <title>GESTOR DE RECICLAJE</title>
    </head>
    <body id="page-top">
        <!--<div>
            <a href="UsuarioController?accion=listar">Listar Persona</a>
        </div>-->
        <div id="wrapper">
            <!--INCLUIMOS EL MENU-->
            <%@include file="../menu.jsp" %>

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">

                    <!--INCLUIMOS LA BARRA TOP-->
                    <%@include file="../topBar.jsp" %>

                    <!-- INICIO contenido de la pagina -->
                    <div class="container-fluid">
                                                
                        <!-- Contenido del Registro del Formulario -->                      
                        <div class="container-fluid">
                            <h1 class="h3 mb-1 text-gray-800">Reciclaje - Registro</h1>
                            <div class="card o-hidden border-0 shadow-lg my-2">
                                <div class="card-body p-0">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="p-3">
                                                <form class="form" onsubmit="return validarRegistrar();" action="ReciclajeController" method="POST">
                                                    <div class="form-group row">
                                                        <div class="col-sm-4">
                                                            <label for="InputRecyclingType">Tipo de Reciclaje:</label>                                                            
                                                            <select class="form-control" id="InputRecyclingType" name="InputRecyclingType">
                                                                <option value="0">Seleccionar</option>
                                                                <option value="1">Cartón</option>
                                                                <option value="2">Papel</option>
                                                                <option value="3">Vidrio</option>
                                                                <option value="4">Lata</option>
                                                                <option value="5">Plástico</option>
                                                                <option value="6">Materia orgánica</option>                                                                	
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <label for="InputAmount">Cantidad:</label>
                                                            <input type="text" class="form-control" id="InputAmount" name="InputAmount">
                                                        </div>
                                                        <div class="col-sm-4">                                                                                                                                                                          
                                                            <label for="InputUnit">Unidad:</label>
                                                            <select class="form-control" id="InputUnit" name="InputUnit">
                                                                <option value="0">Seleccionar</option>
                                                                <option value="1">Kilogramo (kg)</option>
                                                                <option value="2">Gramos (g)</option>
                                                                <option value="3">Toneladas (t)</option>
                                                            </select>
                                                        </div>                                                    
                                                        <div class="col-sm-4">
                                                            <label for="InputCollectionCenter">Centro de Acopio:</label>
                                                            <select class="form-control" id="InputCollectionCenter" name="InputCollectionCenter">
                                                                <option value="0">Seleccionar</option>
                                                                <option value="1">Donde Reciclar</option>
                                                                <option value="2">Resiter Perú</option>
                                                                <option value="3">Real Plaza</option>
                                                                <option value="4">Portal Recicla Lima</option>
                                                                <option value="5">EcoCentury</option>                                                                
                                                            </select>
                                                        </div>                                                 
                                                        <div class="col-sm-4">
                                                            <label for="InputPrice">Precio:</label>
                                                            <input type="text" class="form-control" id="InputPrice" name="InputPrice">                                                                                                                
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <label for="inputEmail3">Opciones</label>
                                                            <div class="col-sm-1"></div>                                                        
                                                            <input type="submit" name="accion" value="Registrar" class="btn btn-primary">                                                        
                                                        </div>                                                    
                                                    </div>
                                                </form>
                                                <br>
                                                <br>                                            
                                                <div>
                                                    <div class="table-responsive">
                                                        <table id="tblReciclaje" class="table table-hover">  
                                                            <thead class="thead bg-primary">
                                                                <tr>
                                                                    <th class="text-center text-white">Tipo de Reciclaje</th>
                                                                    <th class="text-center text-white">Cantidad</th>
                                                                    <th class="text-center text-white">Unidad</th>
                                                                    <th class="text-center text-white">Centro de Acopio</th>
                                                                    <th class="text-center text-white">Precio</th>
                                                                    <th class="text-center text-white">Editar</th>
                                                                    <th class="text-center text-white">Eliminar</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                
                                                                <% List<Reciclaje> listaDatos = (List<Reciclaje>) request.getAttribute("datosLista");
                                                                    for (Reciclaje dato : listaDatos) { %>                                                                    
                                                                     
                                                                     <tr>
                                                                        <td class="text-center"><%= dato.getTipoReciclaje() %></td>
                                                                        <td class="text-center"><%= dato.getCantidad() %></td>
                                                                        <td class="text-center"><%= dato.getUnidad() %></td>
                                                                        <td class="text-center"><%= dato.getCentroAcopio() %></td>
                                                                        <td class="text-center">S/ <%= dato.getPrecio() %></td>
                                                                        <td>
                                                                            <div class="sidebar-brand-icon text-center">
                                                                                <a data-toggle="modal" onclick="mostrarModalEditar('<%= dato.getIdReciclaje()%>','<%= dato.getIdTipo()%>','<%= dato.getCantidad()%>','<%= dato.getIdUnidad()%>','<%= dato.getIdAcopio()%>','<%= dato.getPrecio()%>')" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="sidebar-brand-icon text-center">
                                                                                <a data-toggle="modal" onclick="confirmarEliminar('<%= dato.getIdReciclaje() %>')" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    
                                                                 <% } %>                                                                                                                               
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                                                                       
                    </div>
                    
                    <!-- Scroll to Top Button-->
                    <a class="scroll-to-top rounded" href="#page-top">
                        <i class="fas fa-angle-up"></i>
                    </a>
                    
                    <!-- Editar Reciclaje Registrado Modal-->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <form action="ReciclajeController" onsubmit="return validarEditar();" method="post">
                                    <div class="modal-header bg-primary text-white">
                                        <h5 class="modal-title" id="exampleModalLabel">Editar Reciclaje</h5>
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">                                    
                                            <div class="form-group">
                                                <label>Id Reciclaje</label>
                                                <input type="text" readonly class="form-control form-control-edit-recycling" id="InputId" name="InputId">
                                            </div>                                        
                                            <div class="form-group">
                                                <label>Tipo de Reciclaje</label>                                            
                                                <select class="form-control" id="InputRecyclingTypeEdit" name="InputRecyclingTypeEdit">                                                
                                                    <option value="1">Cartón</option>
                                                    <option value="2">Papel</option>
                                                    <option value="3">Vidrio</option>
                                                    <option value="4">Lata</option>
                                                    <option value="5">Plástico</option>
                                                    <option value="6">Materia orgánica</option>                                                                	
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Cantidad</label>
                                                <input type="text" class="form-control form-control-edit-recycling" id="InputAmountEdit" name="InputAmountEdit">
                                            </div>
                                            <div class="form-group">
                                                <label>Unidad</label>
                                                <select class="form-control" id="InputUnitEdit" name="InputUnitEdit">                                                
                                                    <option value="1">Kilogramo (kg)</option>
                                                    <option value="2">Gramos (g)</option>
                                                    <option value="3">Toneladas (t)</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Centro de Acopio</label>
                                                <select class="form-control" id="InputCollectionCenterEdit" name="InputCollectionCenterEdit">                                                
                                                    <option value="1">Donde Reciclar</option>
                                                    <option value="2">Resiter Perú</option>
                                                    <option value="3">Real Plaza</option>
                                                    <option value="4">Portal Recicla Lima</option>
                                                    <option value="5">EcoCentury</option>                                                                
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Precio</label>
                                                <input type="text" class="form-control form-control-edit-recycling" id="InputPriceEdit" name="InputPriceEdit">
                                            </div>                                                                            
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn btn-secondary" onclick="cerrarModalEditar()" type="button" data-dismiss="modal">Cerrar</button>
                                        <!--<button class="btn btn-primary" type="button" data-dismiss="modal">Aceptar</button>
                                        <input class="btn btn-primary" data-dismiss="modal" type="submit" value="Guardar">      -->                              
                                        <input class="btn btn-primary" name="accion" type="submit" value="Guardar">
                                    </div>
                                </form>                                                               
                            </div>
                        </div>
                    </div>    

                    <!-- Eliminar Reciclaje Modal-->
                    <div class="modal fade" id="trashModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <form action="ReciclajeController" method="post">
                                    <div class="modal-header bg-primary text-white">
                                        <h5 class="modal-title" id="exampleModalLabel">Eliminar Reciclaje</h5>
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">¿Está seguro que desea eliminar el reciclaje registrado? <br> Si elimina el reciclaje registrado
                                    ya no podra visualizarlo en la tabla.</div>
                                    <div class="modal-footer">
                                        <input type="hidden" id="eliminarId" name="eliminarId">
                                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>                                        
                                        <input class="btn btn-primary" name="accion" type="submit" value="Eliminar">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- FIN contenido de la pagina -->
                </div>
                <!-- End of Main Content -->                
                <%@include file="../footer.jsp" %>

            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Bootstrap core JavaScript-->
        <script src="../../content/vendor/jquery/jquery.min.js"></script>
        <script src="../../content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="../../content/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugins -->
        <script src="../../content/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="../../content/js/demo/chart-area-demo.js"></script>
        <script src="../../content/js/demo/chart-pie-demo.js"></script>
        
        <!-- Custom scripts for all pages-->
        <script src="../../content/js/sb-admin-2.min.js"></script>
        
        <!-- Page level plugins -->
        <script src="../../content/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="../../content/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="../../content/js/demo/datatables-demo.js"></script>
        <script>
        // Función para mostrar el modal de edición
        function mostrarModalEditar(idRec,idTip,cant,idUni,idCen,prec) {
            // Rellenar los campos del formulario en el modal con los datos actuales
            document.getElementById('InputId').value = idRec;
            document.getElementById('InputRecyclingTypeEdit').value = idTip;
            document.getElementById('InputAmountEdit').value = cant;
            document.getElementById('InputUnitEdit').value = idUni;
            document.getElementById('InputCollectionCenterEdit').value = idCen;
            document.getElementById('InputPriceEdit').value = prec;
            //document.getElementById('InputRecyclingType').value = nombre;

            // Mostrar el modal
            //document.getElementById('editarModal').style.display = 'block';
        }

        // Función para cerrar el modal de edición
        function cerrarModalEditar() {
            // Limpiar los campos del formulario en el modal
            document.getElementById('InputId').value = '';
            document.getElementById('InputRecyclingTypeEdit').value = '';
            document.getElementById('InputAmountEdit').value = '';
            document.getElementById('InputUnitEdit').value = '';
            document.getElementById('InputCollectionCenterEdit').value = '';
            document.getElementById('InputPriceEdit').value = '';
        }
        
        function confirmarEliminar(id) {
            // Rellenar el campo oculto con el ID del objeto a eliminar
            document.getElementById('eliminarId').value = id;
        }
        
        function validarRegistrar() {                        
            
            if (document.getElementById('InputRecyclingType').value == '0') {                
                alert('Debes seleccionar un Tipo de Reciclaje');                
                return false;
            }else if(document.getElementById('InputAmount').value === ''){
                alert('Debes ingresar una Cantidad');                
                return false;
            }else if(document.getElementById('InputUnit').value == '0'){
                alert('Debes seleccionar un Tipo de Unidad');        
                return false;
            }else if(document.getElementById('InputCollectionCenter').value == '0'){
                alert('Debes seleccionar un Centro de Acopio');        
                return false;
            }else if(document.getElementById('InputPrice').value === ''){
                alert('Debes seleccionar un Centro de Acopio');        
                return false;
            }
            
            return true;
        }
        
        function validarEditar() {                        
            
            if (document.getElementById('InputRecyclingTypeEdit').value == '0') {                
                alert('Debes seleccionar un Tipo de Reciclaje');                
                return false;
            }else if(document.getElementById('InputAmountEdit').value === ''){
                alert('Debes ingresar una Cantidad');                
                return false;
            }else if(document.getElementById('InputUnitEdit').value == '0'){
                alert('Debes seleccionar un Tipo de Unidad');        
                return false;
            }else if(document.getElementById('InputCollectionCenterEdit').value == '0'){
                alert('Debes seleccionar un Centro de Acopio');        
                return false;
            }else if(document.getElementById('InputPriceEdit').value === ''){
                alert('Debes seleccionar un Centro de Acopio');        
                return false;
            }
            
            return true;
        }
    </script>
    
    </body>
</html>
