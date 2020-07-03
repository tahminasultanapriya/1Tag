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
public partial class nonregtags : System.Web.UI.Page
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
    readonly PagedDataSource _pgsource = new PagedDataSource();
    int _firstIndex, _lastIndex;
    private int _pageSize = 10;
    private int CurrentPage
    {
        get
        {
            if (ViewState["CurrentPage"] == null)
            {
                return 0;
            }
            return ((int)ViewState["CurrentPage"]);
        }
        set
        {
            ViewState["CurrentPage"] = value;
        }
    }

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
            }
            if (Page.IsPostBack) return;
            BindDataIntoRepeater();

        }
    }
        
     
    static DataTable BindRepeater()
    {

        var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dataCS"].ToString());
        con.Open();
        var da = new SqlDataAdapter("Select * from Comment2", con);
        var dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;

    }
    protected void DeleteCustomer(object sender, EventArgs e)
    {
        int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("lblUserId") as Label).Text);
        string constr = ConfigurationManager.ConnectionStrings["dataCS"].ConnectionString;
        using (SqlConnection con2 = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Delete from Comment2 WHERE id = @Id", con2))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                con2.Open();
                cmd.ExecuteNonQuery();
                con2.Close();
            }
        }

        BindRepeater();
    }
    private void BindDataIntoRepeater()
    {
        var dt = BindRepeater();
        _pgsource.DataSource = dt.DefaultView;
        _pgsource.AllowPaging = true;
        // Number of items to be displayed in the Repeater
        _pgsource.PageSize = _pageSize;
        _pgsource.CurrentPageIndex = CurrentPage;
        // Keep the Total pages in View State
        ViewState["TotalPages"] = _pgsource.PageCount;
        // Example: "Page 1 of 10"
        //lblpage.Text = "Page " + (CurrentPage + 1) + " of " + _pgsource.PageCount;
        // Enable First, Last, Previous, Next buttons
        lbPrevious.Enabled = !_pgsource.IsFirstPage;
        lbNext.Enabled = !_pgsource.IsLastPage;

        // Bind data into repeater
        Repeater1.DataSource = _pgsource;
        Repeater1.DataSourceID = null;
        Repeater1.DataBind();

        // Call the function to do paging
        HandlePaging();
    }

    private void HandlePaging()
    {
        var dt = new DataTable();
        dt.Columns.Add("PageIndex"); //Start from 0
        dt.Columns.Add("PageText"); //Start from 1

        _firstIndex = CurrentPage - 5;
        if (CurrentPage > 5)
            _lastIndex = CurrentPage + 5;
        else
            _lastIndex = 10;

        // Check last page is greater than total page then reduced it 
        // to total no. of page is last index
        if (_lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
        {
            _lastIndex = Convert.ToInt32(ViewState["TotalPages"]);
            _firstIndex = _lastIndex - 10;
        }

        if (_firstIndex < 0)
            _firstIndex = 0;

        // Now creating page number based on above first and last page index
        for (var i = _firstIndex; i < _lastIndex; i++)
        {
            var dr = dt.NewRow();
            dr[0] = i;
            dr[1] = i + 1;
            dt.Rows.Add(dr);
        }
    }

    protected void lbFirst_Click(object sender, EventArgs e)
    {
        CurrentPage = 0;
        BindDataIntoRepeater();
    }
    protected void lbLast_Click(object sender, EventArgs e)
    {
        CurrentPage = (Convert.ToInt32(ViewState["TotalPages"]) - 1);
        BindDataIntoRepeater();
    }
    protected void lbPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        BindDataIntoRepeater();
    }
    protected void lbNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        BindDataIntoRepeater();
    }

    protected void rptPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (!e.CommandName.Equals("newPage")) return;
        CurrentPage = Convert.ToInt32(e.CommandArgument.ToString());
        BindDataIntoRepeater();
    }

    protected void rptPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        var lnkPage = (LinkButton)e.Item.FindControl("lbPaging");
        if (lnkPage.CommandArgument != CurrentPage.ToString()) return;
        lnkPage.Enabled = false;
        lnkPage.BackColor = Color.FromName("#00FF00");
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