using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;
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

public partial class Default12 : System.Web.UI.Page
{
    /// <summary>
    /// Summary description for AutoComplete
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {

        [WebMethod]
        public string[] AutoCompleteAjaxRequest(string prefixText, int count)
        {
            List<string> ajaxDataCollection = new List<string>();
            DataTable _objdt = new DataTable();
            _objdt = GetDataFromDataBase(prefixText);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    ajaxDataCollection.Add(_objdt.Rows[i]["username"].ToString());
                }
            }
            return ajaxDataCollection.ToArray();
        }
        /// <summary>
        /// Function for retriving data from database
        /// </summary>
        /// <returns></returns>
        public DataTable GetDataFromDataBase(string prefixText)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            DataTable _objdt = new DataTable();
            string querystring = "select * from reg where username like '%" + prefixText + "%';";
            OleDbConnection _objcon = new OleDbConnection(connectionstring);
            OleDbDataAdapter _objda = new OleDbDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            return _objdt;
        }
    }
}