using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class merchant_spam : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string result; double plus;
    double counts;
    double avg;
    double rate1;
    double finl;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Session["id"].ToString();
            DataTable dt = cs.select("select * from Productdataset where product='" + id + "'");
            if (dt.Rows.Count > 0)
            {
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;
                Chart1.Visible = false;
                Chart2.Visible = false;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        string id = Session["id"].ToString();
        // DataTable dt = cs.select("select AVG(rating) as rate from Productdataset where product='" + id + "'");
        //rate =Convert.ToInt32( dt.Rows[0]["rate"].ToString());
        // DataTable dd = cs.select("select * from Productdataset where product='" + id + "' ");
        // if(dd.Rows.Count>0)
        // {
        //     for(int i=0;i<dd.Rows.Count;i++)
        //     {
        //         int rate1 =Convert.ToInt32( dd.Rows[i]["rating"].ToString());
        //         int finl = rate1 - rate;
        //         if(finl > 0.5 || finl < -0.5)
        //         {
        //             string dsid = dd.Rows[i]["dsid"].ToString();
        //             int a = cs.insert("update  Productdataset set status='sparm' where dsid='" + dsid + "'");
        //         }
        //     }

        DataTable dt = cs.select("select sum(rating) as plus, count(rating) as counts from Productdataset where product = '" + id + "' ");
        plus = Convert.ToDouble(dt.Rows[0]["plus"]);
        counts = Convert.ToDouble(dt.Rows[0]["counts"]);
        avg = Convert.ToDouble(plus / counts);


        DataTable dd = cs.select("select * from Productdataset where product='" + id + "' ");
        if (dd.Rows.Count > 0)
        {
            for (int i = 0; i < dd.Rows.Count; i++)
            {
                rate1 = Convert.ToDouble(dd.Rows[i]["rating"]);
                finl = Convert.ToDouble(rate1 - avg);
                if (finl > 0.5 || finl < -0.5)
                {
                    string dsid = dd.Rows[i]["dsid"].ToString();
                    int a = cs.insert("update  Productdataset set status='sparm' where dsid='" + dsid + "'");
                }
            }

        }

        DataTable ff = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm'");
        if (ff.Rows.Count > 0)
        {
            GridView2.Visible = true;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            Chart2.Visible = false;
            Chart1.Visible = false;
            GridView2.DataSource = ff;
            GridView2.DataBind();
            Button1.Visible = false;
            Button2.Visible = true;
            Button3.Visible = true; Button6.Visible = false;
            Button4.Visible = true;
            Button5.Visible = false;
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = Session["id"].ToString();
        DataTable dt = cs.select("select  min(date) as min,max(date) as maxm from Productdataset where product='" + id + "' and status!='sparm'");
        if (dt.Rows.Count > 0)
        {
            DateTime mindate = Convert.ToDateTime(dt.Rows[0]["min"].ToString());
            DateTime maxdate = Convert.ToDateTime(dt.Rows[0]["maxm"].ToString());
            int days = Convert.ToInt32((maxdate - mindate).TotalDays);

            int xbar = days / 2;
            int xnew = 0;
            int sum = 0;
            int deviation;
            //int early;
            DataTable dv = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm'");
            for (int i = 0; i < dv.Rows.Count; i++)
            {
                DateTime date1 = Convert.ToDateTime(dv.Rows[i]["date"].ToString());
                int x = Convert.ToInt32((date1 - mindate).TotalDays);
                xnew = (x - xbar) * (x - xbar);

                sum = sum + xnew;
            }
            deviation = Convert.ToInt32(Math.Sqrt(sum / days));
            if (deviation < 0)
            {
                deviation = -deviation;
            }

            DateTime finaldate = mindate.AddDays(deviation);
            
            
            DataTable kk = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + mindate + "' and  '" + finaldate + "'");
            for (int i = 0; i < kk.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(kk.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='early' where dsid='" + dsid + "'");
            }
            if (kk.Rows.Count > 0)
            {
                Button5.Visible = true;
                Button4.Visible = false;
                Button3.Visible = false;
                Button2.Visible = false; Button6.Visible = false;
                Button1.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = true;
                Chart1.Visible = false;
                Chart2.Visible = false;
                GridView3.DataSource = kk;
                GridView3.DataBind();
            }


        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string id = Session["id"].ToString();
        DataTable dt = cs.select("select  min(date) as min,max(date) as maxm from Productdataset where product='" + id + "' and status!='sparm'");
        if (dt.Rows.Count > 0)
        {
            DateTime mindate = Convert.ToDateTime(dt.Rows[0]["min"].ToString());
            DateTime maxdate = Convert.ToDateTime(dt.Rows[0]["maxm"].ToString());
            int days = Convert.ToInt32((maxdate - mindate).TotalDays);

            int xbar = days / 2;
            int xnew = 0;
            int sum = 0;
            int deviation;
            //int early;
            DataTable dv = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm'");
            for (int i = 0; i < dv.Rows.Count; i++)
            {
                DateTime date1 = Convert.ToDateTime(dv.Rows[i]["date"].ToString());
                int x = Convert.ToInt32((date1 - mindate).TotalDays);
                xnew = (x - xbar) * (x - xbar);

                sum = sum + xnew;
            }
            deviation = Convert.ToInt32(Math.Sqrt(sum / days));
            if (deviation < 0)
            {
                deviation = -deviation;
            }
            //early = xbar - deviation;
            DateTime finaldate = maxdate.AddDays(-deviation);
            DataTable kk = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + finaldate + "' and  '" + maxdate + "'");
            for (int i = 0; i < kk.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(kk.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='laggard' where dsid='" + dsid + "'");
            }
            if (kk.Rows.Count > 0)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView5.Visible = false;
                Chart1.Visible = false;
                Chart2.Visible = false;
                GridView4.Visible = true;
                GridView4.DataSource = kk;
                GridView4.DataBind();
            }


        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string id = Session["id"].ToString();
        DataTable dt = cs.select("select  min(date) as min,max(date) as maxm from Productdataset where product='" + id + "' and status!='sparm'");
        if (dt.Rows.Count > 0)
        {
            DateTime mindate = Convert.ToDateTime(dt.Rows[0]["min"].ToString());
            DateTime maxdate = Convert.ToDateTime(dt.Rows[0]["maxm"].ToString());
            int days = Convert.ToInt32((maxdate - mindate).TotalDays);

            int xbar = days / 2;
            int xnew = 0;
            int sum = 0;
            int deviation;
            //int early;
            DataTable dv = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm'");
            for (int i = 0; i < dv.Rows.Count; i++)
            {
                DateTime date1 = Convert.ToDateTime(dv.Rows[i]["date"].ToString());
                int x = Convert.ToInt32((date1 - mindate).TotalDays);
                xnew = (x - xbar) * (x - xbar);

                sum = sum + xnew;
            }
            deviation = Convert.ToInt32(Math.Sqrt(sum / days));
            if (deviation < 0)
            {
                deviation = -deviation;
            }
            //early = xbar - deviation;
            DataTable kk;
            DateTime earlydate = mindate.AddDays(deviation);
            DateTime lagdate = maxdate.AddDays(-deviation);
            kk = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + earlydate + "' and  '" + lagdate + "'");
            if (earlydate > lagdate)
            {
                kk = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + lagdate + "' and  '" + earlydate + "'");
            }
            for (int i = 0; i < kk.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(kk.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='majority' where dsid='" + dsid + "'");
            }
            if (kk.Rows.Count > 0)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView5.Visible = true;
                GridView4.Visible = false;
                Chart1.Visible = false;
                Chart2.Visible = false;
                GridView5.DataSource = kk;
                GridView5.DataBind();
            }

        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Chart2.Visible = false;
        string id = Session["id"].ToString();
        DataTable pp;
        DateTime earlydate;
        DateTime lagdate;
        DataTable ww = cs.select("select  min(date) as min,max(date) as maxm from Productdataset where product='" + id + "' and status!='sparm'");
        if (ww.Rows.Count > 0)
        {
            DateTime mindate = Convert.ToDateTime(ww.Rows[0]["min"].ToString());
            DateTime maxdate = Convert.ToDateTime(ww.Rows[0]["maxm"].ToString());
            int days = Convert.ToInt32((maxdate - mindate).TotalDays);

            int xbar = days / 2;
            int xnew = 0;
            int sum = 0;
            int deviation;
            //int early;
            DataTable dv = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm'");
            for (int i = 0; i < dv.Rows.Count; i++)
            {
                DateTime date1 = Convert.ToDateTime(dv.Rows[i]["date"].ToString());
                int xt = Convert.ToInt32((date1 - mindate).TotalDays);
                xnew = (xt - xbar) * (xt - xbar);

                sum = sum + xnew;
            }
            deviation = Convert.ToInt32(Math.Sqrt(sum / days));
            if (deviation < 0)
            {
                deviation = -deviation;
            }
            //early = xbar - deviation;
            //DataTable kk;
             earlydate = mindate.AddDays(deviation);
            lagdate = maxdate.AddDays(-deviation);


            DataTable kk = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + mindate + "' and  '" + earlydate + "'");
            for (int i = 0; i < kk.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(kk.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='early' where dsid='" + dsid + "'");
            }


            DataTable mm = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + lagdate + "' and  '" + maxdate + "'");
            for (int i = 0; i < mm.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(mm.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='laggard' where dsid='" + dsid + "'");
            }


            pp = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + earlydate + "' and  '" + lagdate + "'");
            if (earlydate > lagdate)
            {
                pp = cs.select("select * from Productdataset where product='" + id + "' and status!='sparm' and date between '" + lagdate + "' and  '" + earlydate + "'");
            }
            for (int i = 0; i < pp.Rows.Count; i++)
            {
                int dsid = Convert.ToInt32(pp.Rows[i]["dsid"].ToString());
                int a = cs.insert("update  Productdataset set status='majority' where dsid='" + dsid + "'");
            }



            GridView3.Visible = false;
            Chart1.Visible = true;
            //string id = Session["id"].ToString();
            DataTable dt = cs.select("select distinct status, count(status) as early from Productdataset where product='" + id + "' and status='early' group by status union select distinct status, count(status) as majority from Productdataset where product = '" + id + "' and status = 'majority' group by status union select distinct status, count(status) as laggaard from Productdataset where product = '" + id + "' and status = 'laggard' group by status");


            //   DataTable dt = db.selectquery("select  (c.name) as name,v.candid,count(v.candid)as count from voting v join candidates c on v.candid = c.cid GROUP BY  v.candid, c.name order by count asc");
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
            Chart1.Series[0]["PieLabelStyle"] = "Disabled";
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            Chart1.Legends[0].Enabled = true;
            Button5.Visible = false;
            Button6.Visible = true;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Chart2.Visible = true;
        string id = Session["id"].ToString();

        DataTable dt = cs.select("select * from Productdataset where product='" + id + "' and status='early' ");
        for (int i = 0; i < dt.Rows.Count; i++)
        {


            string review = dt.Rows[i]["reviews"].ToString();
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

            if (ccv > posv)
            {
                //Label1.Text = "negative";

                int dsid = Convert.ToInt32(dt.Rows[i]["dsid"]);
                int a = cs.insert("update  Productdataset set status='negative' where dsid='" + dsid + "' ");
            }
            else if (ccv < posv)
            {
                //Label1.Text = "positive";
                int dsid = Convert.ToInt32(dt.Rows[i]["dsid"]);
                int a = cs.insert("update  Productdataset set status='positive' where dsid='" + dsid + "' ");
            }
            else
            {
                //Label1.Text = "neutral";
                int dsid = Convert.ToInt32(dt.Rows[i]["dsid"]);
                int a = cs.insert("update  Productdataset set status='neutral' where dsid='" + dsid + "' ");
            }


        }

        DataTable fd = cs.select("select distinct status, count(status) as negative from Productdataset where product='" + id + "' and status='negative' group by status union select distinct status, count(status) as positive from Productdataset where product = '" + id + "' and status = 'positive' group by status union select distinct status, count(status) as neutral from Productdataset where product = '" + id + "' and status = 'neutral' group by status");

        Chart2.DataSource = fd;
        Chart2.Series[0].ChartType = SeriesChartType.Column;

        //Chart2.Legends[0].Enabled = true;
        Chart2.Series[0].XValueMember = "status";
        Chart2.Series[0].YValueMembers = "negative";
        Chart2.DataBind();
        Button6.Visible = false;

    }
}