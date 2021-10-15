using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plantilla.Datos;
using Plantilla.Datos.Clases;
using Plantilla.Objetos.Clases;

namespace Plantilla.Negocios.Clases
{
   public class CountriesN
    {
        public int getCountries()
        {
            Datos.Clases.CountriesD cd = new Datos.Clases.CountriesD();

            List<usp_CountriesGet_Result> res = cd.ConsultarCountries();

            foreach (usp_CountriesGet_Result country in res)
            {
                Console.Write($"{country.Name} ");
            }

            return 0;
        }
    }
}
