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

namespace Comment_using_repeater
{
    public partial class userprofile : System.Web.UI.Page
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
                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                str = "select * from reg where username='" + Session["username"] + "'";
                cmd = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Label1.Text = "<b><font color=Brown>" + Session["userName"] + "</font>";
                Label2.Text = "<b><font color=Brown>" + Session["userName"] + "</font>";
                Label4.Text = ds.Tables[0].Rows[0]["email"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["country"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["gender"].ToString();

                if (!IsPostBack)
                {
                    bindgrid();
                    BindRepeaterData();
                }


            }


        }

        protected void BindRepeaterData()
        {
            string username = (string)Session["username"];
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from post order by Id desc", con);
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
            GridView2.DataSource = dt;

            GridView2.DataBind();

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
        protected void DeleteCustomer(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("Label10") as Label).Text);
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con2 = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Delete from post WHERE id = @Id", con2))
                {
                    cmd.Parameters.AddWithValue("@Id", id);
                    con2.Open();
                    cmd.ExecuteNonQuery();
                    con2.Close();
                }
            }

            BindRepeaterData();
        }


    }
}