using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Cooking_Trainning_Center_TestPhase
{
    public partial class RegisterationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string status = "ok";
            string usertype = "chef";
            try
            {
                SqlConnection conn = new SqlConnection(DBCalss.connectionstring);                                                                                                                //userid,name,password,usertype,gender,address,phoneNo,status,email                                                                     

                string query = "INSERT INTO users(userid,name,password,usertype,gender,address,phonNo,status,email) values('" + txtUserID.Text + "','" + txtName.Text + "','" + txtPw.Text + "','" + usertype + "','" + ddlGender.Text + "','" + txtAddress.Text + "','" + txtMobileNo.Text + "','" + status + "','" + txtEmail.Text + "')";

                SqlCommand sqlCmd = new SqlCommand(query, conn);
                conn.Open();
                sqlCmd.ExecuteNonQuery();
                conn.Close();

                Label1.Text = "You are registered";

            }
            catch (Exception ex)
            {
                Label1.Text = "Error : " + ex.Message;

            }








        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterationPage.aspx");
        }
    }
}