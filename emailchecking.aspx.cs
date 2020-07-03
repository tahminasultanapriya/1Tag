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

public partial class emailchecking : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string CheckEmail(string useroremail)
    {
        string retval = "";

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select email from reg where email=@email", con);
        cmd.Parameters.AddWithValue("@email", useroremail);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            retval = "true";
        }
        else
        {
            retval = "false";
        }

        return retval;
    }  
}