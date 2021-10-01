using System;
using System.Runtime.Serialization;

namespace Plantilla.Objetos.Clases
{
    [DataContract]
    [Serializable]
    public class Configuracion
    {
        [DataMember]
        public int IdConfiguracion { get; set; }
        [DataMember]
        public int IdTipoConfiguracion { get; set; }
        [DataMember]
        public string TipoConfiguracion { get; set; }
        [DataMember]
        public string Nombre { get; set; }
        [DataMember]
        public int Valor { get; set; }
        [DataMember]
        public bool Estado { get; set; }

    }
}
