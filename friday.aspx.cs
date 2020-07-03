using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class friday : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dataCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillData();
        }
    }
    //FillData method for filling Repeater Control with Data
    private void fillData()
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("Select * from Comment Order by Id Desc", con);
        adapt.Fill(dt);
        con.Close();
        PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 4;
        pds.CurrentPageIndex = PageNumber;


    }
    //btn_Submit Click Event
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        String dateofcomment;
        dateofcomment = DateTime.Now.ToLongDateString().ToString();
        String query = "insert into comment2(Name,Email,Subject,Comment,Date) values('" + txtName.Text + "','" + txtEmail.Text + "','" + Subject.Text + "','" + txtComment.Text + "','" + dateofcomment + "')";
        string mycon = ConfigurationManager.ConnectionStrings["dataCS"].ConnectionString;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }
    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        fillData();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}

