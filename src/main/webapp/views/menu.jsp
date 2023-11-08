<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="UsuarioController?accion=listar">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">GESTOR DE RESIDUOS Y RECICLAJE</div>                    
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="UsuarioController?accion=listar">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Configuraciones
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
           aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Configuracion</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Configuraciones:</h6>
                <a class="collapse-item" href="views/Configuracion/configuracion.jsp">Cen. Acopio</a>
                <a class="collapse-item" href="views/Configuracion/configuracion.jsp">Limites mensuales</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
           aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Administracion</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Ubigeo:</h6>
                <a class="collapse-item" href="views/Administracion/administracion.jsp">Depatamentos</a>
                <a class="collapse-item" href="views/Administracion/administracion.jsp">Distritos</a>
                <a class="collapse-item" href="views/Administracion/administracion.jsp">Centros</a>                
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Usuarios:</h6>
                <a class="collapse-item" href="views/Administracion/administracion.jsp">Usuario</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Gestion
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
           aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Residuos</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Residuos:</h6>                
                <a class="collapse-item" href="UsuarioController?accion=registro">Registro</a>                
                <a class="collapse-item" href="UsuarioController?accion=reportes">Reportes</a>                
            </div>
        </div>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTables"
           aria-expanded="true" aria-controls="collapseTables">
            <i class="fas fa-fw fa-table"></i>
            <span>Reciclaje</span>
        </a>
        <div id="collapseTables" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Reciclaje:</h6>
                <a class="collapse-item" href="views/Reciclaje/reciclaje.jsp">Registro</a>
                <a class="collapse-item" href="views/Reciclaje/reciclaje.jsp">Reportes</a>                
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
<script src="content/vendor/jquery/jquery.min.js"></script>
<script src="content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="content/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="content/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="content/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="content/js/demo/chart-area-demo.js"></script>
<script src="content/js/demo/chart-pie-demo.js"></script>
<!-- End of Sidebar -->