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
    public partial class Productdetails : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["pid"] != null)
                {
                    string sel = "select * from Producttab where Productid=" + Session["pid"] + "";
                    SqlDataReader dr = obj.Fun_exeReader(sel);
                    while (dr.Read())
                    {
                        Label1.Text = dr["Productname"].ToString();
                        Label2.Text = dr["Productdescription"].ToString();
                        Label3.Text = dr["Productprice"].ToString();
                        Label4.Text = dr["Productstock"].ToString();
                        Image1.ImageUrl = dr["Productphoto"].ToString();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string sel = "select max(Cartid) from Carttab";
                string max_cart = obj.Fun_exescalar(sel);
                int n_cart = 0;
                if (max_cart == "")
                {
                    n_cart = 1;
                }
                else
                {
                    int newregid = Convert.ToInt32(max_cart);
                    n_cart = newregid + 1;
                }

                int stock = 0;
                stock = stock_check();
                double tot_price = 0;
                tot_price = price_calc();
                int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                if (qty <= stock)
                {
                    string cart_ins = "insert into Carttab values(" + n_cart + "," + Session["userid"] + "," + Session["pid"] + "," + qty + "," + tot_price + ")";
                    int i = obj.Fun_exenonquery(cart_ins);
                    if (i == 1)
                    {
                        Label5.Text = "Added to cart.";
                    }
                }
                else
                {

                    Label5.Text = "Insufficient Stock.";
                }
            }
            public int stock_check()
            {
                string get_stock = "select Productstock from Producttab where Productid='" + Session["pid"] + "'";
                string stock = obj.Fun_exescalar(get_stock);
                int stock_val = Convert.ToInt32(stock);
                return stock_val;
            }
            public double price_calc()
            {
                string get_price = "select Productprice from Producttab where Productid='" + Session["pid"] + "'";
                string price = obj.Fun_exescalar(get_price);
                double price_val = Convert.ToDouble(price);
                int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                double tprice = price_val * qty;
                return tprice;
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                Response.Redirect("Categoryview.aspx");
            }
        }
}