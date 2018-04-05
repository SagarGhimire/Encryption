using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        App_Data.AdminDataSet.AdminDataTable x = new App_Data.AdminDataSet.AdminDataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
          
        }
    }
}