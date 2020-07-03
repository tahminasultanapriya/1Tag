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
    public partial class changeuserinfo : System.Web.UI.Page
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
        protected void btnUpdate(object sender, EventArgs e)
        {

            try
            {
                System.Threading.Thread.Sleep(5000);
                string user = (string)Session["username"];

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
                conn.Open();
                SqlCommand cmd;

                string insertQuery = "update reg set username=@username, email=@email, country=@country, gender=@gender where username='" + user + "'";
                cmd = new SqlCommand(insertQuery, conn);

                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@country", country.SelectedIndex);
                cmd.Parameters.AddWithValue("@gender", gender_info.SelectedIndex);
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Info updated successfully.";
            }
            catch
            {
                lblMessage.Text = "Failed to update!";
            }

        }
}
}