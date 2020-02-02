using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace Online_Cooking_Trainning_Center_TestPhase
{
    public partial class AddRecipes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                Label1.Text = Session["userID"].ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
                string link = "images/" + Path.GetFileName(FileUpload1.FileName);



                string query = "insert into recipes(foodtype,title,ingrediants,description,requiredTime,photo,Author,date,category) VALUES (@foodtype,@title,@ingrediants,@description,@requiredTime,@photo,@Author,@date,@category)";
                SqlConnection connection = new SqlConnection(DBCalss.connectionstring);
                //Connection String  

                //Open The Connection  
                connection.Open();//foodtype,title,ingrediants,description,requiredTime,photo,Author,date
                SqlCommand cmd = new SqlCommand(query, connection);

                cmd.Parameters.Add("@foodtype", SqlDbType.NVarChar, 100).Value = txtFoodType.Text ;
                cmd.Parameters.Add("@category", SqlDbType.NVarChar, 100).Value = txtCategory.Text;
                cmd.Parameters.Add("@title", SqlDbType.NVarChar, 100).Value =txtReceipe.Text;

                cmd.Parameters.Add("@ingrediants", SqlDbType.NVarChar, 100).Value = txtIngrediants.Text;
                cmd.Parameters.Add("@photo", SqlDbType.NVarChar, 100).Value = link;

                cmd.Parameters.Add("@description", SqlDbType.NVarChar, 100).Value = txtDescription.Text;

                cmd.Parameters.Add("@requiredTime", SqlDbType.NVarChar, 100).Value =txtRtime.Text;
                cmd.Parameters.Add("@Author", SqlDbType.NVarChar, 100).Value = Label1.Text;
                cmd.Parameters.Add("@date", SqlDbType.NVarChar, 100).Value = DateTime.Now.ToString();

                int count = cmd.ExecuteNonQuery();
                //Close The Connection  
                connection.Close();
                if (count == 1)
                {
                    //BindGridData();  

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Record added successfully')", true);
                    //call the method to bind the grid  




                }

                Label1.Text = "Data is saved !";

            }
            catch (Exception ex)
            {
                Label1.Text = "Error : " + ex.Message;

            }

        }
    }
}