using Stripe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace ConciFes
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Uygulama başlangıcında çalışan kod
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            StripeConfiguration.ApiKey = "sk_test_51NGwiIBlsXcGecrvlweultdP8JirEqCAgq3dHPUZOjkWBckA9gFvBF4YbjkXsVQ3RFkuwq0k1zTMUq7UW57Y5S8u00sBNn5jdm";
        }
    }
}