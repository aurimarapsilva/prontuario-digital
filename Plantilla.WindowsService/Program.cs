using System.ServiceProcess;

namespace Plantilla.WindowsService
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {
            ServiceBase[] ServicesToRun;

            ServicesToRun = new ServiceBase[]
            {
                new PlantillaService()
            };
            ServiceBase.Run(ServicesToRun);

            //se ejecuta esta llamada cuando se desea probar el servicio de forma local
            //PlantillaService service = new PlantillaService();
            //service.timer1_Tick_prueba();

        }
    }
}
