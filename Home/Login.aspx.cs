using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Home_Login : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Label1.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        DataTable dt = cs.select("select * from userreg where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
        if(dt.Rows.Count>0)
        {
            string status = dt.Rows[0]["status"].ToString();
            if(status== "Approved")
            {
                Response.Redirect("~/merchant/merchant.aspx");
            }
            else
            {
                Label1.Text = "Wait for Approval";
            }
            
        }
        else
        {
            DataTable dm = cs.select("select * from log where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
            if(dm.Rows.Count>0)
            {
                Response.Redirect("~/Admin/Admin1.aspx");
            }
            else
            {
                Label1.Text = "invalid ";
            }
        }
      
    }
}