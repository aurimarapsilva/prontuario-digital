using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Plantilla.UI.Startup))]
namespace Plantilla.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
