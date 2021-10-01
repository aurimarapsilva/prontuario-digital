using Plantilla.Negocios.Clases;
using Plantilla.Objetos.Clases;
using System.Collections.Generic;

namespace Plantilla.WCF
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ServiciosPlantilla" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ServiciosPlantilla.svc or ServiciosPlantilla.svc.cs at the Solution Explorer and start debugging.
    public class ServiciosPlantilla : IServiciosPlantilla
    {

        #region Configuración
        public oRespuesta<List<Objetos.Clases.Configuracion>> ConsultarConfiguracion(int? idConfiguracion)
        {
            LnConfiguracion data = new LnConfiguracion();
            return data.ConsultarConfiguracion(idConfiguracion);
        }
        #endregion



    }
}
