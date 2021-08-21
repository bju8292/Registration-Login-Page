using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

namespace Registration
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected Boolean Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = " select count(*) from UserData where UserName='" + Username.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp >0)
            {
                mainDev.Visible = false;
                loginSuccessfull.Visible = false;
                registrationFailed.Visible = true;
                return true;
            }
            conn.Close();
            return false;
        }

        protected void DropDownListCountery_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.Page_Load(sender, e))
            {
                return; 
            }
            try
            {
             // Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string query = "select max(ID) from UserData";
                SqlCommand com = new SqlCommand(query, conn);
                int count = Convert.ToInt32(com.ExecuteScalar().ToString());
                count++;
                string insertQuery = "insert into UserData (ID,UserName,Email,Password) values(@ID,@Uname, @email, @password)"; 
                com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", count);
                com.Parameters.AddWithValue("@Uname", Username.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@password", password.Text);
               
               
                com.ExecuteNonQuery();
                mainDev.Visible = false;
                registrationFailed.Visible = false;
                loginSuccessfull.Visible = true;
               
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            
           
        }
        protected void loginSuccessFunc(object sender, EventArgs e) {
            Response.Redirect("Login.aspx");
        }
        protected void userExistFunc(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}