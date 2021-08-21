using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Routing;

namespace Registration
{
    public partial class Login : System.Web.UI.Page
    {
        static String defaultPageGlobal;
        static String defaultTextGlobal;
        static String defaultHeaderGlobal;
        static String defaultFooteGlobal;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            try
            {
                string returnDefault = Request.QueryString["redirect"];
                if (returnDefault != null)
                {
                    loginPage.Visible = false;
                    adminpage.Visible = true;
                    showLogout.Visible = true;
                    showAdmin.Visible = true;
                    showHome.Visible = true;
                }
            }
            catch
            {

            }
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = " select count(*) from UserData where UserName='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp > 0)
            {
                conn.Open();
                string checkPasswordQuery = "select password from UserData where UserName='" + TextBoxUserName.Text + "'" ;
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if(password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    loginPage.Visible = false;
                    adminpage.Visible = true;
                    showLogout.Visible = true;
                    showAdmin.Visible = true;
                    showHome.Visible = true;
                }
                else  
                {
                    Response.Write("Password is Not correct");
                }

            }
            else
            {
                Response.Write("User name is not correct");
            }
        }
        protected void Button_save_Click(object sender, EventArgs e)
        {
            String defaultPage = TextBox_Default_Page.Text;
           String defaultText = TextBox_Default_Text.Text;
           String defaultHeader = TextBox_Header_Text.Text;
           String defaultFooter = TextBox_Footer.Text;
            defaultPageGlobal = defaultPage;
            defaultTextGlobal = defaultText;
            defaultHeaderGlobal = defaultHeader;
            defaultFooteGlobal = defaultFooter;
            adminpage.Visible = false;
            showLogout.Visible = false;
            showAdmin.Visible = false;
            showLogout2.Visible = true;
            showAdmin2.Visible = true;
            Response.Redirect("Default.aspx?dfp="+defaultPage+"&dft="+ defaultText+"&dfh="+ defaultHeader +"&dff=" +defaultFooter);
           // Response.Write("<h1 style=\"font-size: 25px;margin-left: 595px;margin-top: 110px;\">" +defaultPage+"</h2>");
        }

        protected void Button_logout_Click(object sender, EventArgs e) {
            TextBox_Default_Page.Text = "";
            TextBox_Default_Text.Text = "";
            TextBox_Header_Text.Text = "";
            TextBox_Footer.Text = "";
            showLogout.Visible = false;
            showAdmin.Visible = false; 
            adminpage.Visible = false;
            loginPage.Visible = true;
        }

        protected void Button_admin_Click(object sender, EventArgs e)
        {
            TextBox_Default_Page.Text="";
            TextBox_Default_Text.Text="";
            TextBox_Header_Text.Text="";
            TextBox_Footer.Text="";
            showLogout.Visible = true;
            showLogout2.Visible = false;
            showAdmin.Visible = true;
            showAdmin2.Visible = false;
            adminpage.Visible = true;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }

        protected void Button_logout_Click2(object sender, EventArgs e)
        {
            showLogout.Visible = false;
            showLogout2.Visible = false;
            showAdmin.Visible = false;
            showAdmin2.Visible = false;
            adminpage.Visible = false;
            loginPage.Visible = true;
        }
        protected void Button_admin_Click2(object sender, EventArgs e)
        {
            adminpage.Visible = true;
            showAdmin2.Visible = false;
            showLogout2.Visible = false;
            showAdmin.Visible = true;
            showLogout.Visible = true;
        }

    }
}