using System.Runtime.Serialization;

namespace Plantilla.Objetos.Clases
{
    [DataContract]
    public class oRespuesta<TipoGenerico>
    {
        [DataMember]
        public int CodigoRespuesta { get; set; }
        [DataMember]
        public string MensajeRespuesta { get; set; }

        [DataMember]
        public TipoGenerico ObjetoRespuesta { get; set; }

        [DataMember]
        public bool Estado { get; set; }
    }
}
