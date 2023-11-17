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
    <title>Administracion</title>
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

                        <h1 class="h3 mb-1 text-gray-800">Transacciones - Transporte</h1>
                        <div class="card o-hidden border-0 shadow-lg my-2">
                            <div class="card-body p-0">

                                <div class="row">

                                    <div class="col-lg-12">
                                        <div class="p-3">
                                            <form>
                                                <div class="form-group row">
                                                    <div class="col-sm-3">
                                                        <label for="inputEmail3">Empresa</label>
                                                        <div id="divDropComercios">
                                                            <select id="cboEmpresa" class="form-control"></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label for="inputEmail3">Fecha Inicio</label>
                                                        <input type="date" id="dtpFechaIni" class="form-control">
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label for="inputEmail3">Fecha Fin</label>
                                                        <input type="date" id="dtpFechaFin" class="form-control">
                                                    </div>

                                                    <div class="col-sm-3">
                                                        <label for="inputEmail3">Opciones</label>
                                                        <div class="col-sm-1"></div>
                                                        <input type="button" id="btnBuscar" value="Buscar" class="btn btn-primary" />
                                                        <a type="button" href="#" id="btnExportar" class="btn btn-secondary">Export</a>
                                                    </div>
                                                </div>
                                            </form>

                                            <div id="tblTransporte">

                                                <div class="table-responsive">
                                                    <table id="tblEmpresas" class="table table-hover">                                                                                                               
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
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

        <!-- Custom scripts for all pages-->
        <script src="../../content/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="../../content/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="../../content/js/demo/chart-area-demo.js"></script>
        <script src="../../content/js/demo/chart-pie-demo.js"></script>
    </body>
</html>
