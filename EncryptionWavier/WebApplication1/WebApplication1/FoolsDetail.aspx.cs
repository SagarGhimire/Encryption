using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Data;
using WebApplication1.App_Data.TeamDataSetTableAdapters;

public partial class FoolsDetail : System.Web.UI.Page
{
    FoolsTableAdapter abc = new FoolsTableAdapter();
    TeamDataSet.FoolsDataTable x = new TeamDataSet.FoolsDataTable();
    TeamDataSet.FoolsDataTable xabc;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            xabc = abc.GetData();
            GridView1.DataSource = xabc;
            GridView1.DataBind();
        }

        catch (Exception ex)
        {

        }
    }
}
    