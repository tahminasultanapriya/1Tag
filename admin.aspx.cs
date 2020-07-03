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
public partial class admin : System.Web.UI.Page
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
                BindGrid();
            }


        }


    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        int id = int.Parse((sender as LinkButton).CommandArgument);
        byte[] bytes;
        string fileName, contentType;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Name, Data, ContentType from tblFiles where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    bytes = (byte[])sdr["Data"];
                    contentType = sdr["ContentType"].ToString();
                    fileName = sdr["Name"].ToString();
                }
                con.Close();
            }
        }
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = contentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
    private void BindGrid()
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Id, Name from tblFiles";
                cmd.Connection = con;
                con.Open();
                GridView2.DataSource = cmd.ExecuteReader();
                GridView2.DataBind();
                con.Close();
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
    protected void Upload(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string query = "insert into tblFiles(Name,ContentType,Data) values (@Name, @ContentType, @Data)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@Name", filename);
                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                        cmd.Parameters.AddWithValue("@Data", bytes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
        /*protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into comments" + "(tag,com,date)values(@tag,@com,@date)", con);
            cmd.Parameters.AddWithValue("@tag",txtSubject.Text);
            cmd.Parameters.AddWithValue("@com", txtComment.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteNonQuery();

    
        }
        /*protected void show()
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            cmd.CommandText = "select * from comments";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "comments");
            DataList1.DataSource = ds;
            DataList1.DataBind();

    
        }
        */

        protected void logout(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("http://localhost:2382/WebSite2/");
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
}