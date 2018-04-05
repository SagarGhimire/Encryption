using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Data;
using WebApplication1.App_Data.AdminDataSetTableAdapters;
using WebApplication1.App_Data.TeamDataSetTableAdapters;

namespace WebApplication1
{
    public partial class ZombieDetails : System.Web.UI.Page
    {
        ZombieTableAdapter abc = new ZombieTableAdapter();
        TeamDataSet.ZombieDataTable x = new TeamDataSet.ZombieDataTable();
        TeamDataSet.ZombieDataTable abcx;
        protected void Page_Load(object sender, EventArgs e)
        {   try
                {
                    abcx = abc.GetZombieData();
                    GridView1.DataSource = abcx; 
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Label1.Text = "ERROR>>" + ex.Message + "!";
                }

            }
        }

    }
    
