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
public partial class admindetailsprofile : System.Web.UI.Page
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

    protected void Repeater1_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
    {
        Guid username = new Guid(e.CommandArgument.ToString());
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void logout(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("http://localhost:2382/WebSite2/");
    }
}