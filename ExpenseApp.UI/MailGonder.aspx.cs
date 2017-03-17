using System.IO;
using System.Net;
using System.Net.Mail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseApp.UI
{
    public partial class MailGonder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            string to = txtKime.Text;

            string from = txtEmail.Text;

            string password = txtPassword.Text;

            string subject = txtKonu.Text;

            string body = txtMesaj.Text;

            HttpPostedFile ektekidosya = fuAttach.PostedFile;

            try
            {
                MailAt(to, from, password, subject, body, ektekidosya);
                Response.Write("Mail başarıyla gönderildi");
            }
            catch (Exception ex)
            {
                Response.Write("Mail gönderiminde hata oluştu. Err: " + ex.ToString());
            }
        }

        private void MailAt(string to, string from, string password, string subject, string body, HttpPostedFile ektekidosya)
        {
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = subject;

                mm.Body = body;

                if (ektekidosya.ContentLength > 0)
                {
                    string dosyaadi = Path.GetFileName(ektekidosya.FileName);

                    mm.Attachments.Add(new Attachment(ektekidosya.InputStream, dosyaadi));
                }

                mm.IsBodyHtml = false;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";

                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential(from, password);

                smtp.UseDefaultCredentials = true;

                smtp.Credentials = NetworkCred;

                smtp.Port = 587;

                smtp.Send(mm);
            }
        }


    }
}