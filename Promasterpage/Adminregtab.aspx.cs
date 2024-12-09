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
    public partial class Adminregtab : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(RegId) from Logintab";
            string maxregid = obj.Fun_exescalar(sel);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newRegId = Convert.ToInt32(maxregid);
                regid = newRegId + 1;
            }
            string str = "insert into Admregtab values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ")";
            int i = obj.Fun_exenonquery(str);
            if (i == 1)
            {
                string insl = "insert into Logintab values(" + regid + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','Admin')";
                int j = obj.Fun_exenonquery(insl);
            }
        }
    }
}