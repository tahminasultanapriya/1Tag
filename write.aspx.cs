using System;

using System.Collections;

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

using System.Data.SqlClient;

public partial class write : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    string str;

    SqlDataAdapter sqlda;

    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =
         "<b><font color=Brown>" +
          Session["userName"] + "</font>";
        if (!IsPostBack)
        {

            bindgrid();

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


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String dateofcomment;
        dateofcomment = DateTime.Now.ToLongDateString().ToString();
        String query = "insert into user(Subject,Comment,PostedDate) values('" + txtSubject.Text + "','" + txtComment.Text + "','" + dateofcomment + "')";
        string mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();



    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("http://localhost:2382/WebSite2/");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("");
    }
}


