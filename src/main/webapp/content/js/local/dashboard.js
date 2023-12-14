/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// Llama a la función para obtener datos al cargar la página
$(document).ready(function () {
    cargarAreaBar();
});

function obtenerDatosDesdeControlador() {

//    var params = {
//        accion: "pye"
//    };
//
//    $.ajax({
//        url: 'UsuarioController', // Reemplaza con la URL de tu controlador
//        type: 'GET',
//        data: params,
//        dataType: 'json',
//        success: function (data) {
//            dibujarGrafico(data);
//        },
//        error: function (error) {
//            console.error('Error al obtener datos:', error);
//        }
//    });
}

// Función para dibujar el gráfico de pie
function dibujarGrafico(data) {
//    var ctx = document.getElementById('myPieChart2').getContext('2d');
//    var myPieChart = new Chart(ctx, {
//        type: 'pie',
//        data: data,
//        options: {
//            maintainAspectRatio: false,
//            tooltips: {
//                backgroundColor: "rgb(255,255,255)",
//                bodyFontColor: "#858796",
//                borderColor: '#dddfeb',
//                borderWidth: 1,
//                xPadding: 15,
//                yPadding: 15,
//                displayColors: false,
//                caretPadding: 10,
//            },
//            legend: {
//                display: true
//            },
//            cutoutPercentage: 80,
//        },
//    });
    cargarAreaBar();
}

function cargarAreaBar() {

    var params = {
        accion: "dashboard"
    };

    $.ajax({
        url: 'DashboardController', // Reemplaza con la URL de tu controlador
        type: 'GET',
        data: params,
        dataType: 'json',
        success: function (d) {
            dibujarArea(d);
        },
        error: function (error) {
            console.error('Error al obtener datos:', error);
        }
    });
}

function dibujarArea(data) {

    var arrayLabel = "";
    var arrayValue = "";
    var numeroMayor = 0;
    var listacentros = data.listaCentros;
    cargarNotas(data.material, data.acumuladoTotal, "S/. " + data.montoTotal, data.centroAcopio);

    for (var i = 0; i < listacentros.length; i++)
    {
        if (i === Math.floor(listacentros.length) - 1) {
            arrayLabel = arrayLabel + listacentros[i].centroAcopio;
            arrayValue = arrayValue + listacentros[i].cantidad;
            numeroMayor = listacentros[i].cantidad > numeroMayor ? listacentros[i].cantidad : numeroMayor;
        } else {
            arrayLabel = arrayLabel + listacentros[i].centroAcopio + ",";
            arrayValue = arrayValue + listacentros[i].cantidad + ",";
            numeroMayor = listacentros[i].cantidad > numeroMayor ? listacentros[i].cantidad : numeroMayor;
        }

    }

    var arr1 = arrayLabel.split(',');
    var arr2 = arrayValue.split(',');

    var ctx = document.getElementById("myBarChart1");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            //labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo"],
            labels: arr1,
            datasets: [{
                    label: "Volumen",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#2e59d9",
                    borderColor: "#4e73df",
                    //data: [1000, 500, 1500, 1200, 1400],
                    data: arr2,
                }],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                        time: {
                            unit: 'month'
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false
                        },
                        ticks: {
                            maxTicksLimit: 6
                        },
                        maxBarThickness: 25,
                    }],
                yAxes: [{
                        ticks: {
                            min: 0,
                            max: numeroMayor,
                            maxTicksLimit: 10,
                            padding: 10,
                            // Include a dollar sign in the ticks
                            callback: function (value, index, values) {
                                return number_format(value);
                            }
                        },
                        gridLines: {
                            color: "rgb(234, 236, 244)",
                            zeroLineColor: "rgb(234, 236, 244)",
                            drawBorder: false,
                            borderDash: [2],
                            zeroLineBorderDash: [2]
                        }
                    }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#6e707e',
                titleFontSize: 14,
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                        return datasetLabel + ': ' + number_format(tooltipItem.yLabel);
                    }
                }
            },
        }
    });

    cargarPie(data.listaTipoReciclaje);
}

function cargarPie(data) {
    var arraycolores=['#7FFF00','#4e73df','#36b9cc','#e74a3b','#f8f9fc','#1cc88a','#f6c23e','#858796','#5a5c69','#FFEBCD'];
    var arrayLabel = "";
    var arrayValue = "";
    var newArrayColor="";
    for (var i = 0; i < data.length; i++)
    {        
        if (i === Math.floor(data.length) - 1) {
            arrayLabel = arrayLabel + data[i].nombre;
            arrayValue = arrayValue + data[i].cantidad;
            newArrayColor = newArrayColor + arraycolores[i];
        } else {
            arrayLabel = arrayLabel + data[i].nombre + ",";
            arrayValue = arrayValue + data[i].cantidad + ",";
            newArrayColor = newArrayColor + arraycolores[i] + ",";
        }

    }

    var arr1 = arrayLabel.split(',');
    var arr2 = arrayValue.split(',');
    var arr3 = newArrayColor.split(',');

    var ctx = document.getElementById("myPieChart3");
    var myPieChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: arr1,
            datasets: [{
                    data: arr2,
                    backgroundColor: arr3,
                    hoverBackgroundColor: arr3,
                    hoverBorderColor: "rgba(234, 236, 244, 1)",
                }],
        },
        options: {
            maintainAspectRatio: false,
            tooltips: {
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
            },
            legend: {
                display: false
            },
            cutoutPercentage: 80,
        },
    });

    cargarLabel(arr1,arr3);
}

function cargarNotas(dato1, dato2, dato3, dato4) {
    document.getElementById("nt1").innerHTML = dato1;
    document.getElementById("nt2").innerHTML = dato2;
    document.getElementById("nt3").innerHTML = dato3;
    document.getElementById("nt4").innerHTML = dato4;
}

function cargarLabel(arr1,arr3)
{
    var contenido = "";
    for (var i = 0; i < arr1.length; i++) {
        contenido += "<span class='mr-2'>";
        contenido += "<i class='fas fa-circle' style='color:"+ arr3[i]+"'>";        
        contenido += "</i>";
        contenido += arr1[i];
        contenido += "</span>";
    }
    document.getElementById("lbl1").innerHTML = contenido;
}