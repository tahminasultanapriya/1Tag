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
    public partial class Default7 : System.Web.UI.Page
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
                    BindRepeaterData();
                }


            }


        }
        [WebMethod]
        public static List<string> GettagName(string tagName)
        {
            List<string> tagresult = new List<string>();
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database3.mdf;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Top 10 tag from comments where tag LIKE ''+@SearchtagName+'%'";
                    cmd.Connection = con;
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchtagName", tagName);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        tagresult.Add(dr["tag"].ToString());
                    }
                    con.Close();
                    return tagresult;
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
        /*protected void search(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * FROM comments WHERE tag=@txtSearch", conn);

            try
            {

                SqlParameter search = new SqlParameter();
                search.ParameterName = "@txtSearch";
                search.Value = txtSearch.Text.Trim();

                cmd.Parameters.Add(search);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                GridView2.DataSource = dt;
                GridView2.DataBind();
                string a;
                a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection con = new SqlConnection(a);
                con.Open();
                cmd.CommandText = "select * from comments where tag=@txtSearch ";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "comments");
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                //Connection Object Closed
                conn.Close();
            }

        }*/
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Button1.CssClass = "Clicked";
            Button5.CssClass = "Initial";
            Button6.CssClass = "Initial";

            MainView.ActiveViewIndex = 0;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Button1.CssClass = "Initial";
            Button5.CssClass = "Clicked";
            Button6.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Button1.CssClass = "Initial";
            Button5.CssClass = "Initial";
            Button6.CssClass = "Clicked";
            MainView.ActiveViewIndex = 2;
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
        protected void DeleteCustomer(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("lblUserId") as Label).Text);
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con2 = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Delete from post WHERE id=@Id", con2))
                {
                    cmd.Parameters.AddWithValue("@Id", id);
                    con2.Open();
                    cmd.ExecuteNonQuery();
                    con2.Close();
                }
            }
            BindRepeaterData();
        }
        protected void DeleteCustomer1(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("lblUserId") as Label).Text);
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con2 = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Update post set Likes=Likes+1 WHERE id=@Id", con2))
                {
                    cmd.Parameters.AddWithValue("@Id", id);
                    con2.Open();
                    cmd.ExecuteNonQuery();
                    con2.Close();
                }
            }
            BindRepeaterData();
        }
        protected void BindRepeaterData()
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [post] Order By date", con);
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
        protected void Button7_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("http://localhost:2382/WebSite2/");
        }
        protected void insertion(object sender, EventArgs e)
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

                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@country", country.SelectedIndex);
                cmd.Parameters.AddWithValue("@gender", gender_info.SelectedIndex);
                cmd.ExecuteNonQuery();
                conn.Close();
                Label6.Text = "Info updated successfully.";
            }
            catch
            {
                Label6.Text = "Failed to update!";
            }

        }
        protected void Button8_Click1(object sender, EventArgs e)
        {
            Button8.CssClass = "Clicked";
            Button9.CssClass = "Initial";
            Button1.CssClass = "Initial";
            Button5.CssClass = "Initial";
            Button6.CssClass = "Clicked";

            MainView.ActiveViewIndex = 3;
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Button9.CssClass = "Clicked";
            Button8.CssClass = "Initial";
            Button1.CssClass = "Initial";
            Button5.CssClass = "Initial";
            Button6.CssClass = "Clicked";

            MainView.ActiveViewIndex = 4;
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
                lbl_msg.Text = "Your Password has been changed successfully ";
                con1.Close();
                con.Close();
            }
            else
            {
                lbl_msg.Text = " Your old Password is incorrect try again... ";
            }

        }

        protected void Repeater1_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            Guid username = new Guid(e.CommandArgument.ToString());
        }
    }
}