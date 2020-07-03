
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

using System.IO;
using System.Drawing;



public partial class MasterPage : System.Web.UI.MasterPage
{
    string strConnString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

    string s1;

    string path;
    string gen;

    SqlConnection cnn = new SqlConnection();

    SqlCommand com = new SqlCommand();

    SqlDataAdapter sqlda;

    DataTable dt;

    int id;

    string name;

    string address;

    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                username.Text = Request.Cookies["UserName"].Value;
                pass1.Attributes["value"] = Request.Cookies["Password"].Value;
            }

        }
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string str;
        SqlCommand com;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        str = "select * from reg where username=@username and password =@password";

        com = new SqlCommand(str, con);
        Session["username"] = username.Text;

        com.Parameters.AddWithValue("@username", Session["username"]);

        com.Parameters.AddWithValue("@password", pass1.Text);
        SqlDataAdapter da = new SqlDataAdapter(com);

        DataTable ds = new DataTable();

        da.Fill(ds);
        if (ds.Rows.Count > 0)
        {
            if (rememberme.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(10);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(10);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(5);
 
            }
            Response.Cookies["userName"].Value = username.Text.Trim();
            Response.Cookies["password"].Value = pass1.Text.Trim();
            if (Response.Cookies["userName"].Value == "tahminaadmin")
            {
                Response.Redirect("admin.aspx");

            }
            else
            {
                Response.Redirect("registerhome.aspx");
            }

        }

        else
        {

             Label1.Text = "Invalid Username OR Password";

            clear();


        }
    }
    
  
        private void clear()
        {

            username.Text = "";

            pass1.Text = "";

        }
    
 
        protected void rememberme_CheckedChanged(object sender, EventArgs e)
        {

        }





        protected void Female_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void changepage(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
}

