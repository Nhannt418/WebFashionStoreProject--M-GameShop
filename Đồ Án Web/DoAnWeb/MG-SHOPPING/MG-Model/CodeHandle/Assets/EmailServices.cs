using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace MG_Model.CodeHandle.Assets
{
    public class EmailServices
    {
        private static string SMTP_USER = ConfigurationManager.AppSettings["SMTP_USERADRESS"].ToString();
        private static string SMTP_PASSWORD = ConfigurationManager.AppSettings["SMTP_PASSWORD"].ToString();
        private static string SMTP_HOST = ConfigurationManager.AppSettings["SMTP_HOST"].ToString();
        private static string DISPLAY_NAME = ConfigurationManager.AppSettings["DISPLAY_NAME"].ToString();
        private static string SMTP_PORT = ConfigurationManager.AppSettings["SMTP_PORT"].ToString();
        private static string isENABLESSL = ConfigurationManager.AppSettings["ENABLESSL"].ToString();
        public bool Send(string body,string subject,string toMail)
        {
            try
            {
                using (var smtpClient = new SmtpClient())
                {
                    smtpClient.EnableSsl = bool.Parse(isENABLESSL);
                    smtpClient.Host = SMTP_HOST;
                    smtpClient.Port = int.Parse(SMTP_PORT);
                    smtpClient.Credentials= new NetworkCredential(SMTP_USER,SMTP_PASSWORD);
                    var mailMessage = new MailMessage
                    {
                        IsBodyHtml=true,
                        BodyEncoding=Encoding.UTF8,
                        From=new MailAddress(SMTP_USER,DISPLAY_NAME),
                        Subject=subject,
                        Body=body,
                    };
                    mailMessage.To.Add(toMail);//gui toi tomail
                    smtpClient.Send(mailMessage);
                    return true;
                };
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
