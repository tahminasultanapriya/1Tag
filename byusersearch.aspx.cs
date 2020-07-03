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
public partial class byusersearch : System.Web.UI.Page
    {
     string strConnString = ConfigurationManager.ConnectionStrings["dataCS"].ConnectionString;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeaterData();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Comment2 (Name,Comment,Date) values(@Name,@comment,@Date)", con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@comment", txtComment.Text);
            cmd.Parameters.AddWithValue("@Date", DateTime.Now);
            cmd.ExecuteNonQuery();
            con.Close();
            txtName.Text = string.Empty;
            txtComment.Text = string.Empty;
            BindRepeaterData();
        }
        protected void BindRepeaterData()
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Comment2", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                RepDetails.Visible = true;
                RepDetails.DataSource = ds;
                RepDetails.DataSourceID = null;
                RepDetails.DataBind();
            }
            else
            {
                RepDetails.Visible = false;
            }

            con.Close();
        }
    
    }
