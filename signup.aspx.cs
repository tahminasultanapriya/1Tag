
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


    public partial class signup : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
            if (con.State == ConnectionState.Closed)
            {
                bindgrid();
            }



        }
        public void EmailCheck()
        {
            string constring = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Select * from reg where email= @email", con);
            cmd.Parameters.AddWithValue("@email", this.email.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.HasRows == true)
                {

                    lblMessage.Text = (" Already exist");

                    break;
                }
            }

        }



        protected void insertion(object sender, EventArgs e)
        {


            if (FileUpload1.PostedFile.ContentLength > 0)
            {

                s1 = Path.GetFileName(FileUpload1.FileName);

                path = Server.MapPath("images") + "/" + s1;

                FileUpload1.SaveAs(path);

            }


            if (Male.Checked)
            {
                gen = "Male";
            }
            else if (Female.Checked)
            {
                gen = "Female";
            }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
                con.Open();

                SqlCommand com = new SqlCommand("insert into reg" + "(username,email,password,re_pass,country,gender,image)values(@username,@email,@password,@re_pass,@country,@gender,@image)", con);

                com.Connection = con;
                com.Parameters.AddWithValue("@username", username.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@password", pass1.Text);
                com.Parameters.AddWithValue("@re_pass", pass2.Text);
                com.Parameters.AddWithValue("@country", select.SelectedItem.Value);
                com.Parameters.AddWithValue("@gender", gen);
                com.Parameters.AddWithValue("@image", s1);
                com.ExecuteNonQuery();

                com.Dispose();

                bindgrid();
                Session["id"] = id;
                Session["user"] = username.Text;
                Session["email"] = email.Text;
                Session["country"] = select.SelectedItem.Value;
                Session["gender"] = gen;
                Session["image"] = s1;

                Response.Redirect("http://localhost:2382/WebSite2/");

                con.Close();
                clear();

            }
        




        private void clear()
        {

            username.Text = "";
            email.Text="";

            pass1.Text = "";
            pass2.Text = "";

           

        }

        private void bindgrid()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
            con.Open();

            sqlda = new SqlDataAdapter("SELECT * FROM reg ", con);

            dt = new DataTable();

            sqlda.Fill(dt);

            sqlda.Dispose();


            con.Close();

        }



       



        protected void Female_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void onEmailCheck(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            string EmaiId = email.Text.Trim();

            SqlCommand cmd = new SqlCommand("SELECT email FROM reg WHERE email ='" + EmaiId + "'", con);
            con.Open();
            SqlDataReader idr = cmd.ExecuteReader();
            if (idr.HasRows)
            {
                lblMessage.Text = "Email address already exists";
               email.Focus();
            }
            else
            {
                lblMessage.Text = "";
            }
            con.Close();
        }

    }

