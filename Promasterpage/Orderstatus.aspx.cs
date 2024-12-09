using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Promasterpage
{
    public partial class Orderstatus : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Ordertab where Usid=" + Session["userid"] + "";
                SqlDataReader dr = obj.Fun_exeReader(s);
                while (dr.Read())
                {
                    Label1.Text = dr["Usid"].ToString();
                    Label2.Text = dr["Orderdate"].ToString();
                }
                int tp = 0; int gp = 0;

                string s1 = "select sum(quantity) as tqnty, sum(Totalprice) as tpr from Ordertab where Usid=" + Session["userid"] + "";
                SqlDataReader dr1 = obj.Fun_exeReader(s1);
                if(dr1.Read())
                {
                    string tqnty = dr1["tqnty"].ToString();
                    Label3.Text = tqnty;

                    string tpr = dr1["tpr"].ToString();
                    Label4.Text = tpr;
                    tp = Convert.ToInt32(tpr);

                    gp = tp + 20;
                    Label6.Text = Convert.ToString(gp);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int tp = 0; int ba = 0; string date = " ";
            string s1 = "select Orderdate,sum(Totalprice) as tpr from Ordertab where Usid="+ Session["userid"]+"group by Orderdate";
            SqlDataReader dr1 = obj.Fun_exeReader(s1);
            if (dr1.Read())
            {
                date =Convert.ToDateTime(dr1["Orderdate"]).ToString("yyyy-MM-dd");

                string tpr = dr1["tpr"].ToString();
                tp = Convert.ToInt32(tpr);
                ba = tp + 20;
            }

            string ins = "insert into Billingtab values(" + Session["userid"] + ",'" + date + "'," + ba + ")";
            int n = obj.Fun_exenonquery(ins);
            if(n == 1)
            {
                Response.Redirect("Payment.aspx");
            }
        }
    }
}