using Plantilla.Utilitarios.Mensajes;
using Plantilla.WCF.WCF_Email;
using System;
using System.Collections.Generic;
using System.Configuration;

namespace Plantilla.WCF
{
    public class Email
    {
        //instancias

        WCF_Email.EmailClient enviadorEmail = new WCF_Email.EmailClient();

        public WCF_Email.TecRespuesta EnvioCorreo(string nombreAgendador, string idReunionPlantilla, string urlPlantilla, string password, string email, string asunto, DateTime fecha, int tipo, Byte[] attatchment, int cantidadParticipantes, int duracion, string nombreEquipo, string urlEquipo, string nombreSolicitante)
        {
            try
            {

                string contactoSoporte = string.Concat(ConfigurationManager.AppSettings["CORREO_SOPORTE"], " o a las extensiones: ", ConfigurationManager.AppSettings["TELEFONO_SOPORTE"], ".");
                string sentUser = ConfigurationManager.AppSettings["CUENTA_SENTEMAIL"];
                string sentPassword = ConfigurationManager.AppSettings["PASS_SENTEMAIL"];
                string contenido = string.Empty;
                bool IsmostrarNotas = false;
                if (string.IsNullOrEmpty(password))
                {
                    password = "No requiere";
                }


                if (tipo == 0)//correo enviado al que agenda
                {
                    asunto = string.Concat("Agenda de reunión Plantilla: ", asunto);
                    contenido = string.Concat("Estimado ", nombreAgendador, ":<br/><br/>", "Se ha agendado una reunión en Plantilla con los siguientes detalles: <br/><br/>Email solicitante: ", email, "<br/><br/>Fecha: ", fecha.ToString(), "<br/><br/>Duración: ", duracion.ToString(), " minutos<br/><br/>Cantidad de Participantes: ", cantidadParticipantes.ToString(), "<br/><br/>Equipo: ", nombreEquipo, "<br/>");
                    if (!string.IsNullOrEmpty(urlEquipo))
                    {
                        contenido = string.Concat(contenido, " <img src = '", urlEquipo, "' alt = 'equipoSolicitado' style = 'max-height: 200px;margin-left: 150px;' > ");
                    }

                    IsmostrarNotas = true;
                }
                else if (tipo == 1)//correo enviado a la invitación
                {
                    string asuntoCuerpo = asunto;
                    asunto = string.Concat("Invitación a reunión Plantilla: ", asunto);
                    contenido = string.Concat("Estimado ", nombreAgendador, ":<br/><br/>", "Usted ha sido invitado a la reunión virtual mediante la plataforma Plantilla por parte de ", nombreSolicitante, ", con fecha: ", fecha.ToString(), ".<br/><br/> <span style='font-weight: bold;'>Asunto:</span> <span>", asuntoCuerpo, ".</span><br/><br/>", "Información de acceso a la reunión Plantilla: <br/>");
                }




                string cuerpo = PlantillaCorreo(contenido, urlPlantilla, password, idReunionPlantilla, contactoSoporte, true, IsmostrarNotas);
                List<TecAdjunto> listAdjuntos = new List<TecAdjunto>();
                if (attatchment != null)
                {
                    if (attatchment.Length > 0)
                    {
                        WCF_Email.TecAdjunto tecAdjunto = new TecAdjunto();
                        tecAdjunto.Archivo = attatchment;
                        tecAdjunto.TipoArchivo = "ics";
                        tecAdjunto.NombreArchivo = "Calendar_" + asunto;

                        listAdjuntos.Add(tecAdjunto);
                    }

                }


                var resultado = enviadorEmail.EnviarCorreo(email, string.Empty, string.Empty, asunto, cuerpo, true, "High", sentUser, sentPassword, listAdjuntos);
                return resultado;
            }
            catch
            {
                return null;
            }
        }



        public static string PlantillaCorreo(string pContenido, string pLinkSection, string pPasswordSection, string pIdReunionSection, string pCorreoSoporteTEC, bool IsmostrarBoton, bool IsmostrarNotas)
        {
            string plantilla = null;
            string pMostrar = null;
            string pNotas = null;
            try
            {
                if (IsmostrarBoton == false)
                {
                    pMostrar = "none";
                }
                else
                    pMostrar = "block";

                if (IsmostrarNotas)
                {
                    pNotas = "<span style='font-weight: bold;'>IMPORTANTE: </span> <span>Su licencia se activará automáticamente </span><span style='font-weight: bold; text-decoration: underline;'>10 minutos</span>  <span>antes de la hora agendada. Si inició la reunión ANTES de este tiempo deberá SALIR e INICIAR nuevamente.</span>";
                }



                plantilla = Mensajes.PlantillaCorreo;
                plantilla = plantilla.Replace("pContenido", pContenido);
                plantilla = plantilla.Replace("pIdReunionSection", pIdReunionSection);
                plantilla = plantilla.Replace("pLinkSection", pLinkSection);
                plantilla = plantilla.Replace("pPasswordSection", pPasswordSection);
                plantilla = plantilla.Replace("pFecha", DateTime.Now.ToString());
                plantilla = plantilla.Replace("pCorreoSoporteTEC", pCorreoSoporteTEC);
                plantilla = plantilla.Replace("pMostrar", pMostrar);
                plantilla = plantilla.Replace("pNOTAS", pNotas);
            }
            catch
            {
                throw;
            }
            return plantilla;
        }
    }
}