using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace UpdatedShahbazAhmad
{
    public partial class NewPassword : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnectionstring"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

            string User_name = string.Empty;
            string User_color = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_color = reqCookies["UserColor"].ToString();


                if (User_name != "admin")
                {
                    updat_patient.Enabled = false;
                    delete_patient.Enabled = false;

                }

            }
            else
            {

                Response.Redirect("Default.aspx");
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string User_name = string.Empty;
            string User_color = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
         
                User_name = reqCookies["UserName"].ToString();
                User_color = reqCookies["UserColor"].ToString();

                if (txt_pass.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Old Password";
                
                }
                else if (txt_pass.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter New Password";

                }
                else if (txt_confirm.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Confirm Password";

                }
                else if (txt_old.Text != User_color)
                {
                    Label1.Visible = true;
                    Label1.Text = "Old Password Does not Matched";

                }
                else if (txt_pass.Text != txt_confirm.Text)
                {
                    Label1.Visible = true;
                    Label1.Text = "New Password and Confirm Password do not match";

                }
                else
                {

                    myConnection.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "Update DengueMonitoring.dbo.tbl_User Set User_Password = '"+txt_confirm.Text+"' where User_Id='"+User_name+"'";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();

                    Response.Redirect("NewPassword.aspx");
                
                
                
                }





        }
    }
}