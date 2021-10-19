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
    public class CountriesD
    {
        public Tuple<List<usp_CountriesGet_Result>, int, string> ConsultarCountries()
        {
            try
            {
                ProntuarioDigitalEntities db = new ProntuarioDigitalEntities();
             
                List<usp_CountriesGet_Result> qConsulta = db.usp_CountriesGet().ToList();
                var tResultado = new Tuple<List<usp_CountriesGet_Result>, int, string>(qConsulta, 1, "Exito");
                return tResultado;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodBase.GetCurrentMethod().Name.ToString(), ex);
            }
        }
    }
}
