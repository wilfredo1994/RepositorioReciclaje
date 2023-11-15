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
                        <h1 class="h3 mb-2 text-gray-800">Reciclaje</h1>
                        
                        <!-- Contenido del Registro del Formulario -->
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mt-4 mb-2">Registro</h1>
                                    </div>
                                    <form class="register-recycling border border-3 border-dark rounded bg-info p-4 mb-5">
                                        <div class="form-group">
                                            <label class="col-form-label text-gray-900" for="InputRecyclingType">Tipo de Reciclaje:</label> 
                                            <input type="text" class="form-control form-control-register-recycling" id="InputRecyclingType" placeholder="Cartón">
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label text-gray-900" for="InputAmount">Cantidad:</label> 
                                            <input type="text" class="form-control form-control-register-recycling" id="InputAmount" placeholder="10">
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label text-gray-900" for="InputUnit">Unidad:</label> 
                                            <input type="text" class="form-control form-control-register-recycling" id="InputUnit" placeholder="kg">
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label text-gray-900" for="InputCollectionCenter">Centro de Acopio:</label> 
                                            <input type="text" class="form-control form-control-register-recycling" id="InputCollectionCenter" placeholder="Ciudad Saludable">
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label text-gray-900" for="InputPrice">Precio:</label> 
                                            <input type="text" class="form-control form-control-register-recycling" id="InputPrice" placeholder="S/ 10.00">
                                        </div>
                                        <button type="button" class="btn btn-primary btn-register btn-block">Registrar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                                                
                        <!-- Contenido de mostrando tabla de registro -->
                        <h1 class="h3 mb-2 text-gray-800">Mostrando Registro</h1>
                        <div class="card shadow mb-4">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Tipo de Reciclaje</th>
                                                <th class="text-center">Cantidad</th>
                                                <th class="text-center">Unidad</th>
                                                <th class="text-center">Centro de Acopio</th>
                                                <th class="text-center">Precio</th>
                                                <th class="text-center">Editar</th>
                                                <th class="text-center">Eliminar</th>
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
                    
                    <!-- Scroll to Top Button-->
                    <a class="scroll-to-top rounded" href="#page-top">
                        <i class="fas fa-angle-up"></i>
                    </a>
                    
                    <!-- Editar Reciclaje Registrado Modal-->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header" style="    background: #60dbef;color: white;">
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
                                <div class="modal-header" style="    background: #60dbef;color: white;">
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
