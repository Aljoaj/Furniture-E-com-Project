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
    public partial class Loginform : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select count(Regid) from Logintab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            string cid = obj.Fun_exescalar(sel);
            if (cid == "1")
            {
                string str1 = "select Regid from Logintab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string regid = obj.Fun_exescalar(str1);
                Session["userid"] = regid;
                string str2 = "select Logtype from Logintab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string logtype = obj.Fun_exescalar(str2);
                if (logtype == "Admin")
                {
                    Label1.Text = "Admin";
                    Response.Redirect("Adminview.aspx");
                    
                }
                else if (logtype == "User")
                {
                    Label1.Text = "User";
                    Response.Redirect("Categoryview.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid";
            }
        }
    }
}