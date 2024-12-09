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
    public partial class Cartview : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bind_grid();
            }
        }
        public void bind_grid()
        {
            string sel = "select * from Carttab join Producttab on Carttab.Productid=producttab.Productid";
            DataSet ds = obj.Fun_exeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind_grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from Carttab where Cartid=" + getid + "";
            obj.Fun_exenonquery(del);
            bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int j = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[j].Value);
            TextBox txtqty = (TextBox)GridView1.Rows[j].Cells[3].Controls[0];
            string newqty = txtqty.Text;

            string updt = "update Carttab set quantity=" + newqty + " where Cartid=" + getid + "";

            int n = obj.Fun_exenonquery(updt);
            if(n==1)
            {
                string aqty = txtqty.Text;
                string op = "select Productid from Carttab where Cartid=" + getid + "";
                string Proid = obj.Fun_exescalar(op).ToString();

                string prc = "select Productprice from Producttab where Productid=" + Proid + "";
                double newprc = Convert.ToDouble(obj.Fun_exescalar(prc));

                int bqty = Convert.ToInt32(aqty);
                string np = "update Carttab set Totalprice=" + bqty * newprc + " where Cartid=" + getid + "";
                obj.Fun_exenonquery(np);
            }
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(Cartid) from Carttab";
            string z = obj.Fun_exescalar(s);
            int ns = Convert.ToInt32(z);

            DateTime tdate = DateTime.Now;
            string dt = tdate.ToString("yyyy-MM-dd");

            int prqnty = 0;
            float gp = 0;
            int pid = 0;

            // Step 1: Retrieve a ll cart records first
            List<Dictionary<string, object>> cartItems = new List<Dictionary<string, object>>();

            for (int i = 1; i <= ns; i++)
            {
                string sel = "select * from Carttab where Cartid=" + i;
                SqlDataReader dr = obj.Fun_exeReader(sel);

                while (dr.Read())
                {
                    var item = new Dictionary<string, object>
            {
                { "quantity", dr["quantity"] },
                { "Totalprice", dr["Totalprice"] },
                { "Productid", dr["Productid"] },
                { "Cartid", i }
            };
                    cartItems.Add(item);
                }
                dr.Close();
            }

            // Step 2: Process each cart item and insert into the order table
             foreach (var item in cartItems)
            {
                prqnty = Convert.ToInt32(item["quantity"]);
                gp = Convert.ToInt32(item["Totalprice"]);
                pid = Convert.ToInt32(item["Productid"]);
                int cart_id = Convert.ToInt32(item["Cartid"]);

                string insnew = "insert into Ordertab values(" + Session["userid"] + "," + pid + "," + prqnty + "," + gp + ",'" + dt + "','order')";
                int a = obj.Fun_exenonquery(insnew);

                // Delete from Carttab after inserting into Ordertab
                if (a == 1)
                {
                    string dnsnew = "delete from Carttab where Cartid=" + cart_id;
                    int b = obj.Fun_exenonquery(dnsnew);

                    if (b == 1)
                    {
                        Label1.Text = "Inserted successfully";

                    }

                }

                bind_grid();
            }
            Response.Redirect("Orderstatus.aspx");
        }
    }
}