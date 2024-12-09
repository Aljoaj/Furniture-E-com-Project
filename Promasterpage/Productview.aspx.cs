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
    public partial class Productview : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["cid"] != null)
                {
                    string str = "select * from Producttab where Catid=" + Session["cid"] + "";
                    DataSet ds = obj.Fun_exeAdapter(str);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imageButton = (ImageButton)sender;
            string proid = imageButton.CommandArgument;
            if (!string.IsNullOrEmpty(proid) && int.TryParse(proid, out int Productid))
            {
                Session["pid"] = Productid;
                Response.Redirect("Productdetails.aspx");
            }
        }
    }
}