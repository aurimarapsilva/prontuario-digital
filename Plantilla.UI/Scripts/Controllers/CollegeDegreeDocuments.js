var CODIGO_EXITO = 0
var CODIGO_SESSION_EXPIRA = -99;
var CODIGO_NULOS = -98;
var ErrorGeneral = 'Ha ocurrido un problema, inténtalo de nuevo.'
var usuarioConsultarGlob = '';
var codUsuarioConsultarGlob = '';


$(document).ready(function () {
    var lParticipantes = [];
    $.LoadingOverlaySetup({ image: rootDirImage + "/Content/img/anim_tec.gif", maxSize: "128px", minSize: "75px", resizeInterval: 0, size: "100%" });

    //Llamado en carga inicial
    //Tomar la fecha de hoy del cliente
    var now = new Date();
    var day = ("0" + now.getDate()).slice(-2);
    var month = ("0" + (now.getMonth() + 1)).slice(-2);
    var monthAfter = ("0" + (now.getMonth() + 2)).slice(-2);
    var today = now.getFullYear() + "-" + (month) + "-" + (day);

    //Consultar();

    getCollegeDegreeDocuments();
    getCountries();

    $('#addCollegeDegreeDocumentBtn').on("click", function (e) {
        insertCollegeDegreeDocument();
        return false;
    });
});


function insertCollegeDegreeDocument() {
    //string pCollegeDegreeType, int pYear, string pInstitution, string pCountry
    $.LoadingOverlay("show");
    var collegeDegreeType = $('#typeOfDegree').val();
    var year = $('#year').val();
    var institution = $('#institution').val();
    var country = $('#degreeCountries').val();

    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: rootDirImage + 'CollegeDegreeDocuments/insertCollegeDegreeDocument',
        data: {
            'pCollegeDegreeType': collegeDegreeType,
            'pYear': year,
            'pInstitution': institution,
            'pCountry': country
        },
        success: function (data) {
            $('#addDegreeModal').modal("hide");
            $.LoadingOverlay("hide");
            location.reload();
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $('#popFallo').modal('show');
            $('#popFallo .popMensaje').html(ErrorGeneral);
            $.LoadingOverlay("hide");
        }
    });
}

// Get college degree documents
function getCollegeDegreeDocuments() {
    $("#collegeDegreeDocumentsTable > tbody").empty();
    $.LoadingOverlay("show");

    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: rootDirImage + 'CollegeDegreeDocuments/getCollegeDegreeDocumentList',
        data: {},
        success: function (data) {
            for (var i = 0; i < data.Item1.length; i++) {
                var obj = data.Item1[i];

                var row = "<tr>" + 
                            `<td>${obj.Description}</td>` +
                            `<td>${obj.Name}</td>` +
                            `<td>${obj.Year}</td>` +
                            `<td>${obj.Institution}</td>` +
                            `<td>${obj.Country}</td>` +
                            `<td><button type="button" class="btn btn-primary" style="margin-top:0px; margin-bottom:0px;";>Ver archivos</button></td>`
                        "</tr>";

                $("#collegeDegreeDocumentsTable").find("table tbody").append(row);

            }
            $.LoadingOverlay("hide");

        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $('#popFallo').modal('show');
            $('#popFallo .popMensaje').html(ErrorGeneral);
            $.LoadingOverlay("hide");
        }
    });
}

function getCountries() {
    $.LoadingOverlay("show");
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: rootDirImage + 'CollegeDegreeDocuments/getCountries',
        data: {},
        success: function (data) {
                for (var i = 0; i < data.Item1.length; i++) {
                    var obj = data.Item1[i];

                    $('#degreeCountries')
                        .append(`<option value="${obj.Id}">
                                   ${obj.Name}
                                 </option>`);

                }
            $.LoadingOverlay("hide");
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $('#popFallo').modal('show');
            $('#popFallo .popMensaje').html(ErrorGeneral);
            $.LoadingOverlay("hide");
        }
    });
}
