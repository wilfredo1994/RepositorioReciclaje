<%-- 
    Document   : administracion
    Created on : 7 nov. 2023, 14:28:49
    Author     : Jheisson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                <form class="form" action="../UsuarioController" method="POST">
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
                                                            <input type="text" class="form-control" id="InputAmount" placeholder="10">
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
                                                            <input type="text" class="form-control" id="InputPrice" placeholder="S/ 10.00">                                                                                                                
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
                                                                <tr>
                                                                    <td class="text-center">Papel</td>
                                                                    <td class="text-center">4</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Eco Market Perú</td>
                                                                    <td class="text-center">S/ 10.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Plástico</td>
                                                                    <td class="text-center">3</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Recíclame, Ayuda a tu Planeta</td>
                                                                    <td class="text-center">S/ 8.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Metales</td>
                                                                    <td class="text-center">1</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Ciudad Saludable</td>
                                                                    <td class="text-center">S/ 16.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Cartón</td>
                                                                    <td class="text-center">7</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Recíclalo.pe</td>
                                                                    <td class="text-center">S/ 15.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Vidrio</td>
                                                                    <td class="text-center">5</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Ecolegio</td>
                                                                    <td class="text-center">S/ 6.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Materia orgánica</td>
                                                                    <td class="text-center">6</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Ciudad Saludable</td>
                                                                    <td class="text-center">S/ 10.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Plástico</td>
                                                                    <td class="text-center">8</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Eco Market Perú</td>
                                                                    <td class="text-center">S/ 12.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Vidrio</td>
                                                                    <td class="text-center">2</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Ecolegio</td>
                                                                    <td class="text-center">S/ 5.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Cartón</td>
                                                                    <td class="text-center">9</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Recíclame, Ayuda a tu Planeta</td>
                                                                    <td class="text-center">S/ 15.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Papel</td>
                                                                    <td class="text-center">20</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Recíclalo.pe</td>
                                                                    <td class="text-center">S/ 18.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="text-center">Materia orgánica</td>
                                                                    <td class="text-center">5</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Eco Market Perú</td>
                                                                    <td class="text-center">S/ 7.00</td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#editModal"><i class="fas fa-pen" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="sidebar-brand-icon text-center">
                                                                            <a data-toggle="modal" data-target="#trashModal"><i class="fas fa-trash" style="color: #606062;"></i></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
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
                                <div class="modal-header bg-primary text-white">
                                    <h5 class="modal-title" id="exampleModalLabel">Editar Reciclaje</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form class="edit-recycling">
                                        <div class="form-group">
                                            <label>Tipo de Reciclaje</label>
                                            <input type="text" class="form-control form-control-edit-recycling" id="InputRecyclingType"
                                                placeholder="Papel">
                                        </div>
                                        <div class="form-group">
                                            <label>Cantidad</label>
                                            <input type="text" class="form-control form-control-edit-recycling" id="InputAmount"
                                                placeholder="4">
                                        </div>
                                        <div class="form-group">
                                            <label>Unidad</label>
                                            <input type="text" class="form-control form-control-edit-recycling" id="InputUnit"
                                                placeholder="kg">
                                        </div>
                                        <div class="form-group">
                                            <label>Centro de Acopio</label>
                                            <input type="text" class="form-control form-control-edit-recycling" id="InputCollectionCenter"
                                                placeholder="Eco Market Perú">
                                        </div>
                                        <div class="form-group">
                                            <label>Precio</label>
                                            <input type="text" class="form-control form-control-edit-recycling" id="InputPrice"
                                                placeholder="S/ 10.00">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
                                    <button class="btn btn-primary" type="button" data-dismiss="modal">Aceptar</button>
                                </div>
                            </div>
                        </div>
                    </div>    

                    <!-- Eliminar Reciclaje Modal-->
                    <div class="modal fade" id="trashModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-primary text-white">
                                    <h5 class="modal-title" id="exampleModalLabel">Eliminar Reciclaje</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">¿Está seguro que desea eliminar el reciclaje registrado? <br> Si elimina el reciclaje registrado
                                ya no podra visualizarlo en la tabla.</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
                                    <button class="btn btn-primary" type="button" data-dismiss="modal">Aceptar</button>
                                </div>
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
    
    </body>
</html>
