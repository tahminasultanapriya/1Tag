using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace account.membership
{
    public partial class account : System.Web.UI.Page
    {
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] != null)
            {
                username = Request.Cookies["username"].Value;
                if (username == "")
                {
                    Response.Redirect("http://localhost:2382/WebSite2/");
                }
                else
                {
                    if (!IsPostBack)
                    {
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
                        conn.Open();
                        SqlCommand cmd;

                        string getQuery = "select * from reg where username='" + username  + "'";
                        cmd = new SqlCommand(getQuery, conn);

                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            if (rdr.HasRows)
                            {
                                rdr.Read();
                                try
                                {
                                    username.Text = rdr.GetString(rdr.GetOrdinal("username"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    email.Text = rdr.GetString(rdr.GetOrdinal("hometown"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    working_city_info.Text = rdr.GetString(rdr.GetOrdinal("working_city"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    gender_info.SelectedIndex = rdr.GetInt32(rdr.GetOrdinal("gender"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    String str = rdr.GetString(rdr.GetOrdinal("birth")), temp="";
                                    int c = 0;
                                    for(int i=0; i<str.Length; i++)
                                    {
                                        
                                        if(str[i]=='-' && c==0)
                                        {
                                            birth_date_info.Text = temp;
                                            temp = "";
                                            c++;
                                            continue;
                                        }
                                        else if(str[i] == '-' && c == 1)
                                        {
                                            birth_month_info.SelectedIndex = Int32.Parse(temp);
                                            temp = "";
                                            c++;
                                            continue;
                                        }
                                        temp += str[i];
                                    }
                                    birth_year_info.Text = temp;
                                }
                                catch
                                {

                                }
                                try
                                {
                                    email_settings.Text = rdr.GetString(rdr.GetOrdinal("email"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    username_settings.Text = rdr.GetString(rdr.GetOrdinal("username"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    card_number_payment.Text = rdr.GetInt64(rdr.GetOrdinal("card_number")).ToString();
                                }
                                catch
                                {

                                }
                                try
                                {
                                    expiration_date_month_payment.SelectedIndex = rdr.GetInt32(rdr.GetOrdinal("card_expiration_month"));
                                }
                                catch
                                {

                                }
                                try
                                {
                                    expiration_date_year_payment.Text = rdr.GetInt32(rdr.GetOrdinal("card_expiration_year")).ToString();
                                }
                                catch
                                {

                                }
                                try
                                {
                                    cvc_payment.Text = rdr.GetInt32(rdr.GetOrdinal("card_cvc")).ToString();
                                }
                                catch
                                {

                                }
                            }
                        }
                        string readData = "select * from user_placement where user_id='"+usr+"' order by apply_date_time desc";
                        cmd = new SqlCommand(readData, conn);
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            while(rdr.Read())
                            {
                                Label l = new Label();
                                l.Text = "[" + rdr.GetDateTime(rdr.GetOrdinal("apply_date_time")).ToString()+"] Room-"+ rdr.GetString(rdr.GetOrdinal("room_id"))+" was booked from "+ rdr.GetDateTime(rdr.GetOrdinal("placement_date")).ToShortDateString()+" to "+ rdr.GetDateTime(rdr.GetOrdinal("expiration_date")).AddDays(-1).ToShortDateString()+" and paid "+ rdr.GetDecimal(rdr.GetOrdinal("paid_amount")) + "/- Taka";
                                records.Controls.Add(l);
                            }
                        }
                            conn.Close();
                    }
                }
            }
            else
            {
                Response.Redirect("/Home.aspx?focus=lgin");
            }

        }


        private void setErr(System.Web.UI.HtmlControls.HtmlGenericControl obj, TextBox obj2, string err)
        {
            obj.InnerHtml = err;
            obj2.Style.Add("border-color", "red");
        }
        private void unSetErr(System.Web.UI.HtmlControls.HtmlGenericControl obj, TextBox obj2)
        {
            obj.InnerHtml = "&nbsp;";
            obj2.Style.Add("border-color", "green");
        }

        private void setErr(System.Web.UI.HtmlControls.HtmlGenericControl obj, System.Web.UI.HtmlControls.HtmlSelect obj2, string err)
        {
            obj.InnerHtml = err;
            obj2.Style.Add("border-color", "red");
        }
        private void unSetErr(System.Web.UI.HtmlControls.HtmlGenericControl obj, System.Web.UI.HtmlControls.HtmlSelect obj2)
        {
            obj.InnerHtml = "&nbsp;";
            obj2.Style.Add("border-color", "green");
        }



        protected void save_basic_info_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand cmd;

                string insertQuery = "update user_data set full_name=@fname, hometown=@home, working_city=@work, gender=@gen, birth=@birth where username='" + usr + "'";
                cmd = new SqlCommand(insertQuery, conn);

                cmd.Parameters.AddWithValue("@fname", funn_name_info.Text);
                cmd.Parameters.AddWithValue("@home", hometown_info.Text);
                cmd.Parameters.AddWithValue("@work", working_city_info.Text);
                cmd.Parameters.AddWithValue("@gen", gender_info.SelectedIndex);
                cmd.Parameters.AddWithValue("@birth", birth_date_info.Text+"-"+birth_month_info.SelectedIndex+"-"+birth_year_info.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                save_basic_msg.Text = "Info updated successfully.";
            }
            catch
            {
                save_basic_msg.Text = "Failed to update!";
            }
            webTimer.Enabled = true;
        }

        private void hideContent(object sender, System.Timers.ElapsedEventArgs e)
        {
            save_basic_msg.Text = "&nbsp;";
        }
    }