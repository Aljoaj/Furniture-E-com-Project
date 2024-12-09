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
    public partial class Addcategory : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string catphoto = "~/Categoryphotos" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(catphoto));

            string sel = "insert into Categorytab values('" + TextBox1.Text + "','" + catphoto + "','" + TextBox2.Text + "')";
            int j = obj.Fun_exenonquery(sel);
            if (j== 1)
            {
                Label1.Text = "Inserted";
            }
        }
    }
}