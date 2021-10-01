using Plantilla.Objetos.Clases;
using System.Collections.Generic;
using System.ServiceModel;

namespace Plantilla.WCF
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IServiciosPlantilla" in both code and config file together.
    [ServiceContract]
    public interface IServiciosPlantilla
    {
        #region Configuración
        [OperationContract]
        oRespuesta<List<Objetos.Clases.Configuracion>> ConsultarConfiguracion(int? idConfiguracion);
        #endregion

    }
}
