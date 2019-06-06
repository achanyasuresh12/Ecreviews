using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Home_register : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        int a = cs.insert("insert into userreg(name,email,username,password,status)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','pending')");
        if (a > 0)
        {
            txtemail.Text = "";
            txtname.Text = "";
            txtpassword.Text = "";
            txtusername.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
        }
    }
}