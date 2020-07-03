<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
            string term = context.Request["term"] ?? "";
            List<string> listtagNames = new List<string>();

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using(SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("getcommdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@term",
                    Value = term
                });
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    listtagNames.Add(rdr["tag"].ToString());
                }
                JavaScriptSerializer js = new JavaScriptSerializer();
                context.Response.Write(js.Serialize(listtagNames));
            }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}