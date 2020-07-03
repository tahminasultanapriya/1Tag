using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.IO;
using System.Drawing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace Comment_using_repeater
{
    public partial class changepassworduser : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        string str, opr, name;
        SqlDataAdapter sqlda;
        DataTable dt;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        byte up;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                Response.Redirect("http://localhost:2382/WebSite2/");
            }
            else if (Session["username"] == "admin")
            {
                Response.Redirect("admin.aspx");

            }
            else
            {
                Label1.Text = "<b><font color=Brown>" + Session["userName"] + "</font>";

                if (!IsPostBack)
                {
                    bindgrid();
                }


            }


        }


        private void bindgrid()
        {

            string username = (string)Session["username"];

            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "select image from reg where username='" + username + "'";

            sqlda = new SqlDataAdapter(str, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            sqlda.Dispose();

            GridView1.DataSource = dt;

            GridView1.DataBind();

            con.Close();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void logout(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("http://localhost:2382/WebSite2/");
        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
            con.Open();
            string str1 = "select * from reg where password ='" + txt_cpassword.Text + "'";
            SqlCommand cmd = new SqlCommand(str1, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
                con1.Open();
                string str = "update reg set password='" + txt_npassword.Text + "'where password= '" + txt_cpassword.Text + "'";
                SqlCommand cmd1 = new SqlCommand(str, con1);
                cmd1.ExecuteNonQuery();
                lblMessage.Text = "Your Password has been changed successfully ";
                con1.Close();
                con.Close();
            }
            else
            {
                lblMessage.Text = " Your old Password is incorrect try again... ";
            }

        }
    }
}