using System;
using System.Threading.Tasks;
using L2M.Models;
using MailKit.Security;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using MimeKit;

namespace L2M.Services
{
    public class SendMailService : ISendMailService
    {
        private readonly MailSettings mailSettings;

        private readonly ILogger<SendMailService> logger;

        public SendMailService(IOptions<MailSettings> _mailSettings, ILogger<SendMailService> _logger)
        {
            mailSettings = _mailSettings.Value;
            logger = _logger;
            logger.LogInformation("Create SendMailService");
        }


        public async Task SendMail(MailContent mailContent)
        {
            var email = new MimeMessage();
            email.Sender = new MailboxAddress("L2M-Music", "hungg6139@gmail.com");
            email.From.Add(new MailboxAddress("L2M-Music", "hungg6139@gmail.com"));
            email.To.Add(MailboxAddress.Parse(mailContent.To));
            email.Subject = mailContent.Subject;

            var builder = new BodyBuilder();
            builder.HtmlBody = mailContent.Body;
            email.Body = builder.ToMessageBody();

            using(var stmp = new MailKit.Net.Smtp.SmtpClient())
            {
                try
                {
                    stmp.Connect("smtp.gmail.com" , 587, SecureSocketOptions.StartTls);
                    stmp.Authenticate("hungg6139@gmail.com", "garen123#");
                    await stmp.SendAsync(email);
                }
                catch (Exception ex)
                {
                    logger.LogError(ex.Message);
                }
                stmp.Dispose();
                logger.LogInformation("send mail to " + mailContent.To);
            }
        }

        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            await SendMail(new MailContent()
            {
                To = email,
                Subject = subject,
                Body = htmlMessage
            });
        }

    }
}
