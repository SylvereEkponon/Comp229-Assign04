using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class AddModel : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //redirect to Home Page
            Response.Redirect("~/Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Mini mini = new Mini();
                mini.Name = txtName.Text;
                mini.Faction = ddlFaction.SelectedValue;
                mini.Rank = Convert.ToInt32(rblRank.SelectedValue);
                mini.Base = Convert.ToInt32(txtBase.Text);
                mini.Size = Convert.ToInt32(txtSize.Text);
                mini.DeploymentZone = rblDeploymentZone.SelectedValue;
                mini.Mobility = Convert.ToInt32(txtMobility.Text);
                mini.Willpower = Convert.ToInt32(txtMobility.Text);
                mini.Resiliance = Convert.ToInt32(txtResiliance.Text);
                mini.Wounds = Convert.ToInt32(txtWounds.Text);

                var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
                if (File.Exists(filepath))
                {
                    //Deserialize json file
                    var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                    //Add object to jsonData
                    jsonData.Add(mini);

                    //Serialize jsonData to file
                    File.WriteAllText(filepath, JsonConvert.SerializeObject(jsonData));

                    this.SendEmail();

                    //Redirect
                    Response.Redirect("~/Default.aspx");
                }
            }
        }

        protected void SendEmail()
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "From Me");
                MailAddress toAddress = new MailAddress("tekponon@my.centennialcollege.ca", "To You");
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Testing!";
                message.Body = "This is the body of a sample message";
                message.Attachments.Add(new Attachment(System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json")));
                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");
                smtpClient.Send(message);
                Response.Write("E-mail sent!");
            }
            catch (Exception ex)
            {
                Response.Write("Could not send the e-mail - error: " + ex.Message);
            }
        }
    }
}