using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Comp229_Assign04.Models;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
    public partial class Default : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //var filepath = @"C:\Users\e_syl\Desktop\H_Drive\SEMESTER 3\COMP229\Week07\Assign04.json";
            var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Assets/Assign04.json");
            if (File.Exists(filepath))
            {
                var jsonData = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filepath));

                //binding gridView
                allObjectGridView.DataSource = jsonData;
                allObjectGridView.DataBind();
            }
        }
    }
}