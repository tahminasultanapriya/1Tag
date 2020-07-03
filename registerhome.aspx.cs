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
    public partial class registerhome : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = (string)Session["username"];
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [post] (username,tag,com,date) values (@username,@tag,@com,@date)", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@tag", txtSubject.Text);
            cmd.Parameters.AddWithValue("@com", txtComment.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteNonQuery();
            con.Close();
            txtSubject.Text = string.Empty;
            txtComment.Text = string.Empty;
            BindRepeaterData();
        }
        protected void BindRepeaterData()
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [post] ", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                RepDetails.Visible = true;
                RepDetails.DataSource = ds;
                RepDetails.DataSource = null;
                RepDetails.DataBind();
            }
            else
            {
                RepDetails.Visible = false;
            }

            con.Close();
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
    }
}