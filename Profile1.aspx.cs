using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profile1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text =
         "<b><font color=Brown>" +
          Session["userName"] + "</font>";
                Label2.Text =
         "<b><font color=Brown>" +
          Session["userName"] + "</font>";
                Label3.Text =
 "<b><font color=Brown>" +
  Session["email"] + "</font>";
                Label4.Text =
"<b><font color=Brown>" +
Session["gender"] + "</font>";
                Label4.Text =
"<b><font color=Brown>" +
Session["country"] + "</font>";


    }
}