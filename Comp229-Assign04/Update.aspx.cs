using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class Update : System.Web.UI.Page
    {
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {
             name = Request.QueryString["Name"];

            var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
            if (File.Exists(filepath))
            {
                var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                var oneModel = (from model in jsonData
                                where model.Name == name
                                select model);

                //binding gridView
                foreach (var item in oneModel)
                {
                    txtName.Text = item.Name;
                    txtFaction.Text = item.Faction;
                    txtBase.Text = (item.Base).ToString();
                    txtSize.Text = item.Size.ToString();
                    txtMobility.Text = item.Mobility.ToString();
                    txtWillPower.Text = item.Willpower.ToString();
                    txtResiliance.Text = item.Resiliance.ToString();
                    txtWounds.Text = item.Wounds.ToString();


                }
                

            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
                if (File.Exists(filepath))
                {
                    var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                    var oneModel = (from model in jsonData
                                    where model.Name == name
                                    select model);

                    //binding gridView
                    foreach (var item in oneModel)
                    {
                        item.Name = txtName.Text;
                        item.Faction = txtFaction.Text;
                        item.Base = Convert.ToInt32(txtBase.Text);
                        item.Size = Convert.ToInt32(txtSize.Text);
                        item.Mobility = Convert.ToInt32(txtMobility.Text);
                        item.Willpower = Convert.ToInt32(txtWillPower.Text);
                        item.Resiliance = Convert.ToInt32(txtResiliance.Text);
                        item.Wounds = Convert.ToInt32(txtWounds.Text);
                    }

                }

                Response.Redirect("~/Default.aspx");
            }
        }
    }
}