using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
public partial class Default8 : System.Web.UI.Page
{
    private int PageSize = 10;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        SqlConnection com = new SqlConnection(connection);
        string query = "SELECT * FROM reg"; //Northwind DataBase  
        SqlDataAdapter sda = new SqlDataAdapter(query, com);
        DataTable dtCustomers = new DataTable();
        sda.Fill(dtCustomers);
        rptrCustomer.DataSource = dtCustomers;
        rptrCustomer.DataBind();
    }
}