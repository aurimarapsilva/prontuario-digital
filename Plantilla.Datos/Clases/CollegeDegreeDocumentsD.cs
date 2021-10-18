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
    public class CollegeDegreeDocumentsD
    {
        public Tuple<List<usp_CollegeDegreeDocumentsGet_Result>, int, string> getCollegeDegreeDocumentList()
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                List<usp_CollegeDegreeDocumentsGet_Result> qConsulta = db.usp_CollegeDegreeDocumentsGet().ToList();
                var tResultado = new Tuple<List<usp_CollegeDegreeDocumentsGet_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
        public Tuple<int, int, string> insertCollegeDegreeDocument(
            int pGenericDocId, string pCollegeDegreeType,
            int pYear, string pInstitution, string pCountry)
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
                
                int qConsulta = db.usp_CollegeDegreeDocumentsInsert(pGenericDocId, pCollegeDegreeType, pYear, pInstitution, pCountry);
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
