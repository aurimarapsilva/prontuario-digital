using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plantilla.Utilitarios.Constantes;
using System.Data.Entity.Core.Objects;
using System.Reflection;

namespace Plantilla.Datos.Clases
{
    public class PresentationD
    {
        public Tuple<List<usp_PresentationsGet_Result>, int, string> getPresentationsDocumentList()
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_PresentationsGet_Result> qConsulta = db.usp_PresentationsGet().ToList();
                var tResultado = new Tuple<List<usp_PresentationsGet_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
        public Tuple<List<usp_PresentationsInsert_Result>, int, string> insertPresentationsDocument(
            int pGenericDocId, DateTime pEventDate,
            string pPlace, string pName, string pEvent)
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_PresentationsInsert_Result> qConsulta = db.usp_PresentationsInsert(pGenericDocId, pEventDate, pPlace, pName, pEvent).ToList();
                var tResultado = new Tuple<List<usp_PresentationsInsert_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
    }
}
