using Plantilla.Objetos.Clases;
using Plantilla.UIProcess.Clases;
using Plantilla.Utilitarios.Constantes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web.Mvc;
using System.Web.WebPages;
using Newtonsoft.Json.Linq;

namespace Plantilla.UI.Controllers
{
    public class HomeController : Controller
    {
        #region Instancias
        //Instancia a la clase de Servicios en UIProcess
        private AccesoSeguridad ServiciosSeguridad = new AccesoSeguridad();
        //Objeto de retorno
        oRespuesta<string> respuestaValidacion = new oRespuesta<string>();

        //Debido que el usuario aun no está logueado, se usa un dummy inicial al logueo.
        //Luego de loguearse, cambia los datos al usuario que se encuentra logueado.
        public int idUsuarioLogueado = 1;
        public string usuarioLogueado = "sistemaLogueo@itcr.ac.cr";
        public string sessionNombreUsuario = "NombreUsuario";
        public string sessionId = ConfigurationManager.AppSettings["SessionID"];
        #endregion

        public ActionResult Index()
        {
           /* if (Session["usuarioLogueado"] != null)
            {
                ViewBag.NombreUsuario = Session["usuarioLogueado"].ToString();
                ViewBag.NombreCompleto = Session["usuarioLogueado"].ToString();
                //inicializa el controller de Login para obtener el menú.
                LoginController controllerPermiso = new LoginController();
                controllerPermiso.InitializeController(this.Request.RequestContext);
                JsonResult respuesta = controllerPermiso.ConsultarPermisosUsuario(0);
                Session["PermisosMenu"] = respuesta.Data;
                Session["IdTipoPermiso"] = ConfigurationManager.AppSettings["TipoPermiso"];

                string _url = Request.Url.ToString();
                //Consulta permiso de acceso a URL
                //bool tieneAcceso = TieneAccesoAView(respuesta.Data, _url);
                bool tieneAcceso = true;
                if (tieneAcceso == false) { return RedirectToAction("PaginaInvalida", "Login"); }
           */
                return View();
            /*}
            else
            {
                return RedirectToAction("Index", "Login");
            }*/
        }

        public ActionResult CollegeDegreeDocuments()
        {
            return View();
        }
        public ActionResult MagazineArticles()
        {
            return View();
        }
        public ActionResult Presentations()
        {
            return View();
        }
        public ActionResult LanguageKnowledgeDocuments()
        {
            return View();
        }
        public ActionResult Training()
        {
            return View();
        }
        public ActionResult ResearchProjects()
        {
            return View();
        }
        public JsonResult getCollegeDegreeDocumentList()
        {
            try
            {
                /*int idPersona = int.Parse(Session["sesionIdPersona"].ToString()); //En caso de no ser admin se usa
                string nombreCompletoSolicitante = Session["NombreCompletoUsuario"].ToString();

                //aplica validaciones si las hay

                if (idConfiguracion.IsEmpty())
                {
                    respuesta.CodigoRespuesta = Constantes.Respuesta.CODIGOERROR;
                    respuesta.Estado = false;
                    respuesta.MensajeRespuesta = Utilitarios.Mensajes.Mensajes.Plantilla_Parametros_invalidos;
                    return Json(new { respuesta }, JsonRequestBehavior.AllowGet);
                }*/

                //definición de variables que serán enviadas al método
                //int idConfig = Int32.Parse(idConfiguracion);




                //Acceso a servicios
                //respuesta = ServiciosSeguridad.ObtenerConfiguracion(idConfig);
                string jsonStr = @"{
                    'Result':[
                        {'Id': 1, 'Type': 'Física Molecular', 'Year': 2015, 'Institution': 'Universidad de Costa Rica', 'Country':'Costa Rica'},
                        {'Id': 2, 'Type': 'Física Molecular', 'Year': 2015, 'Institution': 'Universidad de Costa Rica', 'Country':'Costa Rica'},
                        {'Id': 3, 'Type': 'Física Molecular', 'Year': 2015, 'Institution': 'Universidad de Costa Rica', 'Country':'Costa Rica'},
                        {'Id': 4, 'Type': 'Física Molecular', 'Year': 2015, 'Institution': 'Universidad de Costa Rica', 'Country':'Costa Rica'},
                        {'Id': 5, 'Type': 'Física Molecular', 'Year': 2015, 'Institution': 'Universidad de Costa Rica', 'Country':'Costa Rica'}
                    ]
                }";

                dynamic data = JObject.Parse(jsonStr);

                //return Json(new { data }, JsonRequestBehavior.AllowGet);
                return new JsonResult { Data = data, JsonRequestBehavior = JsonRequestBehavior.AllowGet };

            }
            catch
            {
                return new JsonResult { Data = null, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }

        }
    }
}