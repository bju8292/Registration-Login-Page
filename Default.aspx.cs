using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class Default : System.Web.UI.Page
    {
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string defaultPage = Request.QueryString["dfp"].ToString();
            string defaultText = Request.QueryString["dft"].ToString();
            string defaultHeader = Request.QueryString["dfh"].ToString();
            string defaultFooter = Request.QueryString["dff"].ToString();
            count++;
            if (count > 1)
            {
                ctrl.Text = "<h1 style=\"font-size: 25px;margin-left: 572px;margin-top: 185px;background-color: #29d3b0 ;padding: 12px ; border: 1px solid #84879E ;border-radius: 8px;width: 26%;position: absolute;text-align: center;\">" + defaultText + "</h2>";
            }
            else 
            {
                ctrl.Text = "<h1 style=\"font-size: 25px;margin-left: 572px;margin-top: 185px;background-color: #29d3b0 ;padding: 12px ; border: 1px solid #84879E ;border-radius: 8px;width: 26%;position: absolute;text-align: center;\">" + defaultPage + "</h2>";
            }

            // Response.AppendHeader("referesh", "6;url=Contact.aspx");


            //Response.Write("<h1 style=\"font-size: 25px;margin-left: 595px;margin-top: 110px;\">" + defaultPage + "</h2>");
        }
        protected void Button_admin_Click(object sender, EventArgs e) 
        {
            Response.Redirect("Login.aspx?redirect=fromdefault");
        }

        protected void Button_logout_Click2(object sender, EventArgs e) 
        {
            showLogout.Visible = false;
            showLogin.Visible = true;
            string defaultText = Request.QueryString["dfp"].ToString();
            ctrl.Text = "<h1 style=\"font-size: 25px;margin-left: 572px;margin-top: 185px;background-color: #29d3b0 ;padding: 12px ; border: 1px solid #84879E ;border-radius: 8px;width: 26%;position: absolute;text-align: center;\">" + defaultText + "</h1>";
        }

        protected void Button_login_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}