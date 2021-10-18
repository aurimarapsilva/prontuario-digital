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
    public class TrainingD
    {
        public Tuple<List<usp_TrainingGet_Result>, int, string> getTrainingDocumentList()
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_TrainingGet_Result> qConsulta = db.usp_TrainingGet().ToList();
                var tResultado = new Tuple<List<usp_TrainingGet_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
        public Tuple<int, int, string> insertTraningDocument(
            int pGenericDocId, string pName,
            DateTime pStartDate, DateTime pEndDate, int pHours, string pTrainingEntity)
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                int qConsulta = db.usp_TrainingInsert(pGenericDocId, pName, pStartDate, pEndDate, pHours, pTrainingEntity);
                var tResultado = new Tuple<int, int, string>(qConsulta, qConsulta, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
    }
}
