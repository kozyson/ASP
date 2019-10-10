using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress(txtTo.Text.Trim());
        mail.To.Add(txtTo.Text.Trim());
        mail.Subject = txtSubject.Text.Trim();
        mail.Body = txtBody.Text;
        SmtpServer.Port = 587;
        SmtpServer.Credentials =
            new System.Net.NetworkCredential
                 (txtTo.Text, txtFromPwd.Text);
        SmtpServer.EnableSsl = true;
        SmtpServer.Send(mail);

    }
}