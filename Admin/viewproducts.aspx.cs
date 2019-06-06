using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_viewproducts : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("SELECT distinct product,COUNT(reviews) as ratecount FROM Productdataset GROUP BY  product ");
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="view")
        {
            //string id = e.CommandArgument.ToString();
           
          
                Session["id"] = e.CommandArgument.ToString();
                Response.Redirect("reviews.aspx");
           
           
        }
    }
}