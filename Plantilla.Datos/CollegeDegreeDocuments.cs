//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Plantilla.Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class CollegeDegreeDocuments
    {
        public int Id { get; set; }
        public int GenericDocumentId { get; set; }
        public int CollegeDegreeTypeId { get; set; }
        public int Year { get; set; }
        public int InstitutionId { get; set; }
        public int CountryId { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual CollegeDegreeTypes CollegeDegreeTypes { get; set; }
        public virtual Countries Countries { get; set; }
        public virtual GenericDocument GenericDocument { get; set; }
        public virtual Institutions Institutions { get; set; }
    }
}
