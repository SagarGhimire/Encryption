using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Data;
using WebApplication1.App_Data.UserDataSetTableAdapters;

public partial class WavierForm : System.Web.UI.Page
{
    
    UserDataSet.UserdataDataTable userTable;
    String teamId = "";
    String first, last, phone, email, TeamData;
    
  

    protected void Page_Load(object sender, EventArgs e)
    {
       
        first = txtFirstName.Text.ToString();
       last = txtLastName.Text.ToString();
        phone = txtphone.Text.ToString();
         email = userEmail.Text.ToString();
        TeamData = DropDownList1.SelectedItem.ToString();

        System.Diagnostics.Debug.WriteLine("tHE DATA IS " + TeamData);
        if (TeamData.Equals("Fool's Gold"))
        {
            teamId = "1";
        }
        else
        {
            teamId = "2";
        }

       


    }



    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       

        //Guid id = new Guid();
        UserDataSet userData = new UserDataSet();
        UserDataTableAdapter userDataTableAdapter = new UserDataTableAdapter();
        UserDataSet.UserdataRow userdataRow = userData.Userdata.NewUserdataRow();
        DataTable a = userDataTableAdapter.GetData();

       
       // userdataRow.UserId = id;
       userdataRow.First = first;
        userdataRow.Last = last;
        userdataRow.Phone = phone;
        userdataRow.Email = email;
        userdataRow.TeamId = teamId;
        userData.Userdata.Rows.Add(userdataRow);
        userDataTableAdapter.Update(userData.Userdata);
        Response.Redirect("Default.aspx");


    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}