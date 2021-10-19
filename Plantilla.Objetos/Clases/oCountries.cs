using System;
using System.Runtime.Serialization;

namespace Plantilla.Objetos.Clases
{
    [DataContract]
    [Serializable]
    public class oCountries
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public bool IsDeleted { get; set; }
    }
}
