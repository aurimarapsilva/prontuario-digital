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
    public class ResearchProjectD
    {
        public Tuple<List<usp_ResearchProjectGet_Result>, int, string> getResearchProjectList()
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_ResearchProjectGet_Result> qConsulta = db.usp_ResearchProjectGet().ToList();
                var tResultado = new Tuple<List<usp_ResearchProjectGet_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
        public Tuple<List<usp_ResearchProjectInsert_Result>, int, string> insertResearchProject(
            int pGenericDocId, int pProjectCode,
            string pProjectName, int pStartYear, int pEndYear, bool isValidated )
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_ResearchProjectInsert_Result> qConsulta = db.usp_ResearchProjectInsert(pGenericDocId, pProjectCode, pProjectName, pStartYear, pEndYear, isValidated).ToList();
                var tResultado = new Tuple<List<usp_ResearchProjectInsert_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
    }
}
