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
    public partial class Userregtab : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Regid) from Logintab";
            string maxregid = obj.Fun_exescalar(sel);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newRegid = Convert.ToInt32(maxregid);
                regid = newRegid + 1;
            }

            string str = "insert into Usrregtab values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + "," + TextBox5.Text + ",'"+RadioButtonList1.SelectedItem.Text+ "'," + TextBox6.Text + ",'Active')";
            int i = obj.Fun_exenonquery(str);
            if (i == 1)
            {
                string inslog = "insert into Logintab values(" + regid + ",'" + TextBox8.Text + "','" + TextBox9.Text + "','User')";
                int j = obj.Fun_exenonquery(inslog);
            }
        }
    }
}