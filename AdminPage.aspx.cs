using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["New"] != null)
            {
                Label_welcome.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }*/
        }

        protected void Button_save_Click(object sender, EventArgs e)
        {
            String defaultPage = TextBox_Default_Page.Text;
            String defaultText = TextBox_Default_Text.Text;
            String defaultHeader = TextBox_Header_Text.Text;
            String defaultFooter = TextBox_Footer.Text;
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}