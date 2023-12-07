<%-- 
    Document   : administracion
    Created on : 7 nov. 2023, 14:28:49
    Author     : Jheisson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
    <!--<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>GESTOR DE RESIDUOS</title>
        <link href="../../content/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link href="../../content/css/sb-admin-2.min.css" rel="stylesheet">
    </head>-->
    <head>
    <%@include file="../head.jsp" %>
    
    <!-- Custom styles for this template -->
    <link href="../../content/css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Custom styles for this page -->
    <link href="../../content/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <title>GESTOR DE RESIDUOS</title>
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
                            <h1 class="h3 mb-1 text-gray-800">Residuo - Registro</h1>
                            <div class="card o-hidden border-0 shadow-lg my-2">
                                <div class="card-body p-0">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="p-3">
                                                <form class="form" action="../UsuarioController" method="POST">
                                                    <div class="form-group row">                                                        
                                                        <div class="col-sm-4">
                                                            <label for="InputGeneratingProcess">Proceso Generador:</label>
                                                            <select class="form-control" id="InputGeneratingProcess" name="InputGeneratingProcess">
                                                                <option value="0">Seleccionar</option>
                                                                <option value="1">Residuos de cocina</option>
                                                                <option value="2">Productos químicos</option>
                                                                <option value="3">Líquidos contaminados</option>
                                                                <option value="4">Medicamentos vencidos</option>
                                                                <option value="5">Residuos de jardín</option>
                                                                <option value="6">Pilas y baterías</option>
                                                                <option value="7">Envoltorios de alimentos</option>
                                                                <option value="8">Restos de comida</option>
                                                                <option value="9">Envases de vidrio</option>
                                                                <option value="10">Aguas residuales domésticas</option>
                                                                <option value="11">Latas de aluminio</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <label for="InputGeneratingProcess">Residuo:</label>
                                                            <select class="form-control" id="InputGeneratingProcess" name="InputGeneratingProcess">
                                                                <option value="0">Seleccionar</option>
                                                                <option value="1">Orgánico</option>
                                                                <option value="2">Líquido</option>
                                                                <option value="3">Peligroso</option>
                                                                <option value="4">Sólido</option>
                                                                <option value="5">Residuos de Construcción y Demolición</option>
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
                                                                    <th class="text-center text-white">Residuo</th>
                                                                    <th class="text-center text-white">Proceso Generador</th>
                                                                    <th class="text-center text-white">Cantidad</th>
                                                                    <th class="text-center text-white">Unidad</th>
                                                                    <th class="text-center text-white">Centro de Acopio</th>
                                                                    <th class="text-center text-white">Editar</th>
                                                                    <th class="text-center text-white">Eliminar</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="text-center">Orgánico</td>
                                                                    <td class="text-center">Residuos de cocina</td>
                                                                    <td class="text-center">1</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Donde Reciclar</td>
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
                                                                    <td class="text-center">Líquido</td>
                                                                    <td class="text-center">Productos químicos</td>
                                                                    <td class="text-center">8</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Resiter Perú</td>
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
                                                                    <td class="text-center">Líquido</td>
                                                                    <td class="text-center">Líquidos contaminados</td>
                                                                    <td class="text-center">10</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Real Plaza</td>
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
                                                                    <td class="text-center">Peligroso</td>
                                                                    <td class="text-center">Medicamentos vencidos</td>
                                                                    <td class="text-center">4</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Portal Recicla Lima</td>
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
                                                                    <td class="text-center">Orgánico</td>
                                                                    <td class="text-center">Residuos de jardín</td>
                                                                    <td class="text-center">5</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">EcoCentury</td>
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
                                                                    <td class="text-center">Peligroso</td>
                                                                    <td class="text-center">Pilas y baterías</td>
                                                                    <td class="text-center">2</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Resiter Perú</td>
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
                                                                    <td class="text-center">Sólido</td>
                                                                    <td class="text-center">Envoltorios de alimentos</td>
                                                                    <td class="text-center">9</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Portal Recicla Lima</td>
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
                                                                    <td class="text-center">Orgánico</td>
                                                                    <td class="text-center">Restos de comida</td>
                                                                    <td class="text-center">15</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Real Plaza</td>
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
                                                                    <td class="text-center">Sólido</td>
                                                                    <td class="text-center">Envases de vidrio</td>
                                                                    <td class="text-center">5</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Donde Reciclar</td>
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
                                                                    <td class="text-center">Líquido</td>
                                                                    <td class="text-center">Aguas residuales domésticas</td>
                                                                    <td class="text-center">10</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">EcoCentury</td>
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
                                                                    <td class="text-center">Sólido</td>
                                                                    <td class="text-center">Latas de Aluminio</td>
                                                                    <td class="text-center">10</td>
                                                                    <td class="text-center">kg</td>
                                                                    <td class="text-center">Resiter Perú</td>
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
                                    <h5 class="modal-title" id="exampleModalLabel">Editar Residuo</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form class="edit-residue">
                                        <div class="form-group">
                                            <label>Residuo</label>
                                            <input type="text" class="form-control form-control-edit-residue" id="InputResidue"
                                                placeholder="Orgánico">
                                        </div>
                                        <div class="form-group">
                                            <label>Proceso Generador</label>
                                            <input type="text" class="form-control form-control-edit-residue" id="InputGeneratingProcess"
                                                placeholder="Residuos de cocina">
                                        </div>
                                        <div class="form-group">
                                            <label>Cantidad</label>
                                            <input type="text" class="form-control form-control-edit-residue" id="InputAmount"
                                                placeholder="1">
                                        </div>
                                        <div class="form-group">
                                            <label>Unidad</label>
                                            <input type="text" class="form-control form-control-edit-residue" id="InputUnit"
                                                placeholder="kg">
                                        </div>
                                        <div class="form-group">
                                            <label>Centro de Acopio</label>
                                            <input type="text" class="form-control form-control-edit-residue" id="InputCollectionCenter"
                                                placeholder="Donde Reciclar">
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

                    <!-- Eliminar Residuo Modal-->
                    <div class="modal fade" id="trashModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-primary text-white">
                                    <h5 class="modal-title" id="exampleModalLabel">Eliminar Residuo</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">¿Está seguro que desea eliminar el residuo registrado? <br> Si elimina el residuo registrado
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
