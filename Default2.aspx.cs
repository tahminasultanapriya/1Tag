

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
using System.IO;
using System.Collections.Generic;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;

using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    string s1;

    string path;
    string gen;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        String dateofcomment;
        dateofcomment = DateTime.Now.ToLongDateString().ToString();
        String query = "insert into comment3(Name,Email,Subject,Comment,image,Date) values('" + txtName.Text + "','" + txtEmail.Text + "','" + Subject.Text + "','" + txtComment.Text + "','" + s1 + "','" + dateofcomment + "')";
        string mycon = ConfigurationManager.ConnectionStrings["dataCS"].ConnectionString;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
       
    }





    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}