//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Plantilla.Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Presentations
    {
        public int Id { get; set; }
        public int GenericDocumentId { get; set; }
        public System.DateTime EventDate { get; set; }
        public string Place { get; set; }
        public string Name { get; set; }
        public string Event { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual GenericDocument GenericDocument { get; set; }
    }
}