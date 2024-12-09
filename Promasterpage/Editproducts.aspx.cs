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
    public partial class Editproducts : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Grid();
            }
        }
        public void Bind_Grid()
        {
            string str = "select * from Producttab";
            DataSet ds = obj.Fun_exeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_Grid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind_Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        { 
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtprice = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtdes = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtstock = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            FileUpload catm = (FileUpload)GridView1.Rows[i].FindControl("Fileupload1");

            string strp = "";
            string ph = string.Empty;
            if (catm != null && catm.HasFile)
            {
                string folder = Server.MapPath("~/Productphotos/");
                string filepath = System.IO.Path.Combine(folder, catm.FileName);
                catm.SaveAs(filepath);
                ph = "~/Productphotos/" + catm.FileName;
                strp = "update Producttab set Productname='" + txtname.Text + "',Productprice='" + txtprice + "',Productphoto='"+ph+"',Productdescription='" + txtdes + "',Productstock='"+txtstock+"'where Productid=" + getid + "";
            }
            else
            {
                strp = "update Producttab set Productname='" + txtname.Text + "',Productprice='" + txtprice + "',Productdescription='" + txtdes + "',Productstock='" + txtstock + "'where Productid=" + getid + "";
            }
            obj.Fun_exenonquery(strp);

            GridView1.EditIndex = -1;
            Bind_Grid();
        }
    }
}