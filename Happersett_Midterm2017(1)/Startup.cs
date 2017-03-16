using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Happersett_Midterm2017_1_.Startup))]
namespace Happersett_Midterm2017_1_
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
