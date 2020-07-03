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
    public partial class prac : System.Web.UI.Page
    {
        private string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetData();
            }
        }

        private void GetData()
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            SqlCommand cmd = new SqlCommand("SELECT [tag],[com],[date] FROM [comments]", con);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            dlMessage.DataSource = dt;
            dlMessage.DataBind();
        }

        protected void btnShare_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            SqlCommand cmd = new SqlCommand("INSERT INTO comments Values(@tag,@com,@date)", con);
            cmd.Parameters.AddWithValue("@tag", "Test");
            cmd.Parameters.AddWithValue("@com", txtshare.Text.Trim());
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            this.GetData();
        }
}

