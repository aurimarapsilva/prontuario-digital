using Plantilla.Objetos.Clases;
using Plantilla.UIProcess.Clases;
using Plantilla.Utilitarios.Constantes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web.Mvc;
using System.Web.WebPages;
using Plantilla.Datos;
using Newtonsoft.Json.Linq;
using System.Globalization;

namespace Plantilla.UI.Controllers
{
    public class PresentationsController : Controller
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
            //if (Session["usuarioLogueado"] != null)
            //{
            //    ViewBag.NombreUsuario = Session["usuarioLogueado"].ToString();
            //    ViewBag.NombreCompleto = Session["usuarioLogueado"].ToString();
            //    //inicializa el controller de Login para obtener el menú.
            //    LoginController controllerPermiso = new LoginController();
            //    controllerPermiso.InitializeController(this.Request.RequestContext);
            //    JsonResult respuesta = controllerPermiso.ConsultarPermisosUsuario(0);
            //    Session["PermisosMenu"] = respuesta.Data;
            //    Session["IdTipoPermiso"] = ConfigurationManager.AppSettings["TipoPermiso"];

            //    string _url = Request.Url.ToString();
            //    //Consulta permiso de acceso a URL
            //    //bool tieneAcceso = TieneAccesoAView(respuesta.Data, _url);
            //    bool tieneAcceso = true;
            //    if (tieneAcceso == false) { return RedirectToAction("PaginaInvalida", "Login"); }

            //    return View();
            //}
            //else
            //{
            //    return RedirectToAction("Index", "Login");
            //}
            /*
            Datos.Clases.CountriesD cd = new Datos.Clases.CountriesD();

            List<usp_CountriesGet_Result> res = cd.ConsultarCountries();

            foreach (usp_CountriesGet_Result country in res)
            {
                Console.Write($"{country.Name} ");
                Console.Write("Hola mundo");
            }*/
            return View();
        }

        public JsonResult getPresentationsDocumentList()
        {
            try
            {
                Datos.Clases.PresentationD cd = new Datos.Clases.PresentationD();

                var response = cd.getPresentationsDocumentList();

                return new JsonResult { Data = response , JsonRequestBehavior = JsonRequestBehavior.AllowGet };

            }
            catch
            {
                return new JsonResult { Data = null, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }

        }
        public JsonResult insertPresentationDocument(string pEventDate, string pPlace, string pName, string pEvent)
        {
            int genericDocumentId = 1;
            CultureInfo provider = CultureInfo.InvariantCulture;

          string dateString = pEventDate;
          string format = "yyyy-MM-dd";

          try {
                DateTime eventDate = DateTime.ParseExact(dateString, format, provider);
                Datos.Clases.PresentationD cd = new Datos.Clases.PresentationD();

                var response = cd.insertPresentationsDocument(genericDocumentId, eventDate, pPlace, pName, pEvent);

                return new JsonResult { Data = response , JsonRequestBehavior = JsonRequestBehavior.AllowGet };

            }
            catch
            {
                return new JsonResult { Data = null, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }

        }

        public ActionResult CollegeDegreeDocuments()
        {
            return RedirectToAction("Index", "CollegeDegreeDocuments");
        }
        public ActionResult MagazineArticles()
        {
            return RedirectToAction("Index", "MagazineArticles");
        }
        public ActionResult Presentations()
        {
            return RedirectToAction("Index", "Presentations");
        }
        public ActionResult LanguageKnowledgeDocuments()
        {
            return RedirectToAction("Index", "LanguageKnowledgeDocuments");
        }
        public ActionResult Training()
        {
            return RedirectToAction("Index", "Training");
        }
        public ActionResult ResearchProjects()
        {
            return RedirectToAction("Index", "ResearchProjects");
        }
    }
}