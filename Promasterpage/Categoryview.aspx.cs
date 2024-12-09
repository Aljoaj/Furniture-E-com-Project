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
    public partial class Categoryview : System.Web.UI.Page
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
            string str = "select * from Categorytab";
            DataSet ds = obj.Fun_exeAdapter(str);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imageButton = (ImageButton)sender;
            string catid = imageButton.CommandArgument;
            if(!string.IsNullOrEmpty(catid)&&int.TryParse(catid,out int Catid))
            {
                Session["cid"] = Catid;
                Response.Redirect("Productview.aspx");
            }
        }
    }
}