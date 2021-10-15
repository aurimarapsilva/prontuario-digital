using Plantilla.Utilitarios.Constantes;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Reflection;

namespace Plantilla.Datos.Clases

{
    public class AdConfiguracion
    { }
  /*      #region Consultar
        /// <summary>
        /// Obtiene los participantes de una reunión
        /// </summary>
        /// <returns></returns>
        public Tuple<List<pr_ObtieneConfiguracion_Result>, int, string> ConsultarConfiguracion(int? idConfiguracion)
        {
            try
            {
                BDPlantillaMVC_ServiciosEntities db = new BDPlantillaMVC_ServiciosEntities();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.pr_ObtieneConfiguracion(idConfiguracion, codigo, mensaje).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_ObtieneConfiguracion_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_ObtieneConfiguracion_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }


        #endregion
    }

    
    public class CollegeDegreeDocuments
    {
        #region 
        /// <summary>
        /// Obtiene los participantes de una reunión
        /// </summary>
        /// <returns></returns>
        public Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string> CollegeDegreeDocumentSelect(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_CollegeDegreeDocumentGet().ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }

        public Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string> CollegeDegreeDocumentDelete(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_CollegeDegreeDocumentGet().ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_ObtieneCollegeDegreeDocument_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
        #endregion




    }


    public class Countries
    {
        #region 
        /// <summary>
        /// Obtiene los participantes de una reunión
        /// </summary>
        /// <returns></returns>
        public Tuple<List<usp_CountriesGet_Result>, int, string> ConsultarCountries(int? Id)
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_CountriesGet().ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Countries_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Countries_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }


        #endregion




    }*/
    /*
    public class Editorial
    {
        public Tuple<List<pr_Editorial_Result>, int, string> ConsultarConfiguracion(int? Id)
    {
        try
        {
            dbProntuarioDigital db = new dbProntuarioDigital();
            ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
            ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

            var qConsulta = db.usp_EditorialSelect(Id).ToList();

            //Validación de Éxito
            if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
            {
                var tResultadoErroneo = new Tuple<List<pr_Editorial_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                return tResultadoErroneo;
            }
            else
            {
                var tResultado = new Tuple<List<pr_Editorial_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                return tResultado;
            }
        }
        catch (Exception ex)
        {
            throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
        }
    }



    }

    public class Files
    {
        public Tuple<List<pr_Files_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_FilesSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Files_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Files_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class GenericDocument
    {
        public Tuple<List<pr_GenericDocument_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                masterProntuario db = new masterProntuario();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_GenericDocument_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_GenericDocument_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Institutions
    {
        public Tuple<List<pr_Institutions_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_InstitutiosnSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Institutions_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Institutions_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class LanguageKnowledgeDocuments
    {
        public Tuple<List<pr_LanguageKnowledgeDocuments_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_LanguageKnowledgeDocumentsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_LanguageKnowledgeDocuments_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_LanguageKnowledgeDocuments_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class LanguageKnowledgeLevels
    {
        public Tuple<List<pr_LanguageKnowledgeLevels_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_LanguageKnowledgeLevelsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_LanguageKnowledgeLevels_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_LanguageKnowledgeLevels_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Languages
    {
        public Tuple<List<pr_Languages_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_LanguagesSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Languages_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Languages_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Presentations
    {
        public Tuple<List<pr_Presentations_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_PresentationsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Presentations_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Presentations_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Regulations
    {
        public Tuple<List<pr_Regulations_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_RegulationsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Regulations_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Regulations_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class ResearchProject
    {
        public Tuple<List<pr_ResearchProjects_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_ResearchProjectsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_ResearchProjects_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_ResearchProjects_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Tips
    {
        public Tuple<List<pr_Tips_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_TipsSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Tips_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Tips_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Training
    {
        public Tuple<List<pr_Training_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_TrainingSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Training_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Training_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class TrainingEntities
    {
        public Tuple<List<pr_TrainingEntities_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_TrainingEntitiesSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_TrainingEntities_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_TrainingEntities_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Author
    {
        public Tuple<List<pr_Author_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_AuthorSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Author_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Author_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Book
    {
        public Tuple<List<pr_Book_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_BookSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Book_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Book_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class Magazines
    {
        public Tuple<List<pr_Magazines_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_MagazinesSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_Magazines_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_Magazines_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }

    public class MagazinesArticles
    {
        public Tuple<List<pr_MagazinesArticles_Result>, int, string> ConsultarConfiguracion(int? Id)
        {
            try
            {
                dbProntuarioDigital db = new dbProntuarioDigital();
                ObjectParameter codigo = new ObjectParameter("Codigo", typeof(int));
                ObjectParameter mensaje = new ObjectParameter("Mensaje", typeof(string));

                var qConsulta = db.usp_MagazinesArticlesSelect(Id).ToList();

                //Validación de Éxito
                if (Convert.ToInt32(codigo.Value) == Constantes.Respuesta.CODIGOERROR)
                {
                    var tResultadoErroneo = new Tuple<List<pr_MagazinesArticles_Result>, int, string>(null, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultadoErroneo;
                }
                else
                {
                    var tResultado = new Tuple<List<pr_MagazinesArticles_Result>, int, string>(qConsulta, Convert.ToInt32(codigo.Value), mensaje.Value.ToString());
                    return tResultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }



    }*/


}
