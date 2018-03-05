using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validator
{
    public partial class validation1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* RangeValidator1.MinimumValue = DateTime.Now.ToShortDateString();
           // RangeValidator1.MinimumValue = new DateTime(1900, 12, 12).ToShortDateString();*/
            

        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            
           
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d = DateTime.Parse(args.Value);
            int a = DateTime.Now.Year - d.Year;
            if (a>16)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
            if (a >= 16 && cin.Type != "")
            {
                args.IsValid = true;
            }
        }

       
    }
}