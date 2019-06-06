using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class sentitrial : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        id = "Kindle Oasis E-reader with Leather Charging Cover - Merlot, 6 High-Resolution Display (300 ppi), Wi-Fi - Includes Special Offers,,";

        DataTable dt = cs.select("select * from Productdataset where product='" + id + "' and status='early' ");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
           
          
            string review = "Pretty abysmal that angry you have to.buy a charger port adverse";
            string[] tmp = review.Split(' ');
            int ngcount = review.Count();
            int ccv = 0;
            int negcunt = 0;
            int poscount = 0;
            int posv = 0;
            DataTable ng = cs.select("select * from negativedataset");
            if (ng.Rows.Count > 0)
            {
                int h = tmp.Length;
                for (int j = 0; j < tmp.Length; j++)
                {
                    int flag = 0;
                   
                    string cc = tmp[j].ToLower();
                    string negwrd = "";
                    for (int f = 0; f < cc.Length; f++)
                    {
                        if (cc[f] >= 'a' && cc[f] <= 'z')
                        {
                            negwrd += cc[f];
                        }
                    }

                   
                    for (int n = 0; n < ng.Rows.Count; n++)
                    {
                        string neg = ng.Rows[n]["negativewords"].ToString().ToLower();


                     
                        if (neg == negwrd)
                        {
                            negcunt = negcunt + 1;
                            
                        }
                        ccv = negcunt;
                        //Label1.Text = ccv.ToString();


                    }

                   


                }

            }
            DataTable vb = cs.select("select * from positivewords");
            //int h = tmp.Length;
            for (int j = 0; j < tmp.Length; j++)
            {
                

                string cc = tmp[j].ToLower();
                string postwrd = "";
                for (int f = 0; f < cc.Length; f++)
                {
                    if (cc[f] >= 'a' && cc[f] <= 'z')
                    {
                        postwrd += cc[f];
                    }
                }


                for (int n = 0; n < vb.Rows.Count; n++)
                {
                    string pos = vb.Rows[n]["positivewords"].ToString().ToLower();



                    if (pos == postwrd)
                    {
                        poscount = poscount + 1;

                    }
                    posv = poscount;
                    //Label1.Text = posv.ToString();


                }




            }

            if(ccv>posv)
            {
                Label1.Text = "negative";
            }
            else if(ccv<posv)
            {
                Label1.Text = "positive";
            }
            else
            {
                Label1.Text = "neutral";
            }


        }
       
    }
}