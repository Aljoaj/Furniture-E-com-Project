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
    public partial class Addproducts : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bind_dropdown();

            }
        }
        public void bind_dropdown()
        {
            string str = "select Catid,Cat_name from Categorytab";
            DataSet ds = obj.Fun_exeAdapter(str);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cat_name";
            DropDownList1.DataValueField = "Catid";
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string prphoto = "~/Productphotos" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(prphoto));

            string sel = "insert into Producttab values("+DropDownList1.SelectedItem.Value+",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + prphoto + "','" + TextBox3.Text + "','Available','"+TextBox4.Text+"')";
            int j = obj.Fun_exenonquery(sel);
            if (j == 1)
            {
                Label1.Text = "Inserted";
            }
        }
    }
}