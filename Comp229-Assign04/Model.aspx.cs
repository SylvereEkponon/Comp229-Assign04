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
    public partial class Model : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BinData();

        }

        private void BinData()
        {
            // populate the gridview  with existing data from db
            string name = Request.QueryString["Name"];

            var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
            if (File.Exists(filepath))
            {
                var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                var oneModel = (from model in jsonData
                                where model.Name == name
                                select model);

                //binding gridView
                modelGridView.DataSource = oneModel;
                modelGridView.DataBind();
            }
        }

        protected void modelGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Mini mini = new Mini();
            string name = Request.QueryString["Name"];
            var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
            if (File.Exists(filepath))
            {
                //Deserialize json file
                var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                //object to delete
                foreach (var item in jsonData)
                {
                    if (item.Name==name)
                    {
                         mini = item;
                    }
                }

                ////Remove object to jsonData
                jsonData.Remove(mini);

                //Serialize jsonData to file
                File.WriteAllText(filepath, JsonConvert.SerializeObject(jsonData));

                
                //Redirect
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}