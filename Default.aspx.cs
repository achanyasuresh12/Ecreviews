using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class _Default : System.Web.UI.Page
{
    string result; double plus;
    double counts;
    double avg;
    double rate1;
    double finl;
    string id;
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           id = "Kindle Oasis E-reader with Leather Charging Cover - Merlot, 6 High-Resolution Display (300 ppi), Wi-Fi - Includes Special Offers,,";
            DataTable dt = cs.select("select sum(rating) as plus, count(rating) as counts from Productdataset where product = '"+id+"' ");
            plus = Convert.ToDouble(dt.Rows[0]["plus"]);
            counts = Convert.ToDouble(dt.Rows[0]["counts"]);
             avg =Convert.ToDouble( plus / counts);


            DataTable dd = cs.select("select * from Productdataset where product='" + id + "' ");
            if (dd.Rows.Count > 0)
            {
                for (int i = 0; i < dd.Rows.Count; i++)
                {
                    rate1 = Convert.ToDouble(dd.Rows[i]["rating"]);
                    finl =Convert.ToDouble( rate1 - avg);
                    if (finl > 0.5 || finl < -0.5)
                    {
                        string dsid = dd.Rows[i]["dsid"].ToString();
                        int a = cs.insert("update  Productdataset set status='sparm' where dsid='" + dsid + "'");
                    }
                }

            }
        }


    }
}