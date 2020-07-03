using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

public partial class verification : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
    string USERID;
    protected void Page_Load(object sender, EventArgs e)
    {
                if (Request.QueryString["id"] != null)
        {
            USERID = Request.QueryString["id"];
            SqlCommand cmd = new SqlCommand("Update reg set is_approve=1 where id=@id", con);
            cmd.Parameters.AddWithValue("@", USERID);          
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write(Request.QueryString["id"]);
        }
    }
}

 