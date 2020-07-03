using System;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void SendEmail(object sender, EventArgs e)
    {
        using (MailMessage mm = new MailMessage(txtEmail.Text, txtTo.Text))
        {
            mm.Subject = txtSubject.Text;
            mm.Body = txtBody.Text;
            if (fuAttachment.HasFile)
            {
                string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
            }
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text, txtPassword.Text);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
    }
       
}