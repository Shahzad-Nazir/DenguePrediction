using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.IO;
using System.Net;  


namespace UpdatedShahbazAhmad
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_color = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_color = reqCookies["UserColor"].ToString();

                if (User_name != "admin")
                {
                    updat_patient.Enabled = false;
                    delete_patient.Enabled = false;

                }

            }
            else
            {

                Response.Redirect("Default.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            string to = "sajjadnns1@gmail.com"; //To address    
            string from = txt_email.Text; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = TextArea1.Value;
            message.Subject = txt_name.Text;
            message.Body = mailbody;
          
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("sajjadnns1@gmail.com", "nns6543210");
            client.EnableSsl = true;
            //client.UseDefaultCredentials = false;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                Response.Redirect("ContactUs.aspx");
            }

            catch (Exception ex)
            {
                throw ex;
            }  


        }
    }
}