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
    public partial class Payment : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int user = Convert.ToInt32(Session["userid"]);
            string sel = "select Granttotal from Billingtab where Usid=" + user + "";
            SqlDataReader dr = obj.Fun_exeReader(sel);
            int amnt = 0;
            while(dr.Read())
            {
                int price = Convert.ToInt32(dr["Granttotal"]);
                amnt += price;
            }

            string ins = "insert into Acctab values(" + user + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ")";
            int i = obj.Fun_exenonquery(ins);
            if(i==1)
            {
                balance(user, amnt);
            }
            else
            {
                Label1.Text = "Error adding details";
            }
        }
        public void balance(int user, int amnt)
        {
            Balcheckservice.ServiceClient cls = new Balcheckservice.ServiceClient();
            string min = cls.balance_check(user, amnt);
            if(min=="Success")
            {
                string upd = $"update Ordertab set Orderstatus='paid' where Usid=" + user;
                int status = obj.Fun_exenonquery(upd);
                if(status>=1)
                {
                    string message = "Order confirmed and payment processed!";
                    Response.Write("<script>alert('" + message + "');</script>");
                }
                else
                {
                    string message = "Failed to update order status!";
                    Response.Write("<script>alert('" + message + "');</script>");
                }
            }
            else if(min=="Insufficient Balance")
            {
                string message = "Insufficient Balance!";
                Response.Write("<script>alert('" + message + "');</script>");
            }
            else if(min=="User not found")
            {
                string message = "User not found!";
                Response.Write("<script>alert('" + message + "');</script>");
            }
            else
            {
                string message = "An error occured while processing the balance!";
                Response.Write("<script>alert('" + message + "');</script>");
            }
        }
    }
}