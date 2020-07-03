using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;


public partial class ajaxsearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    string name, city, opr;
    string oldname, newname;



    protected void Page_Load(object sender, EventArgs e)
    {


        opr = Request.QueryString["opr"].ToString();



        if (opr == "search")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            name = Request.QueryString["nm1"].ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " select * from post where username  like ('" + name.ToString() + "%') ";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            Response.Write("<table >"); 

            Response.Write("<tr>");
            Response.Write("<td>"); Response.Write("Tag"); Response.Write("</td>");
            Response.Write("<td>"); Response.Write("Name"); Response.Write("</td>");
            Response.Write("<td>"); Response.Write("Post"); Response.Write("</td>");
            Response.Write("</tr>");




            foreach (DataRow dr in dt.Rows)
            {
                Response.Write("<tr>");
                Response.Write("<td>"); Response.Write(dr["tag"].ToString()); Response.Write("</td>");
                Response.Write("<td>"); Response.Write(dr["username"].ToString()); Response.Write("</td>");
                Response.Write("<td>"); Response.Write(dr["com"].ToString()); Response.Write("</td>");
                Response.Write("</tr>");

            }
            Response.Write("</table>");

            con.Close();
        }





    }
}