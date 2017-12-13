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
    }
}